// stechuhr-crypt encrypts the lines of the stechuhr logs with HPKE (RFC 9180): DHKEM(X25519, HKDF-SHA256),
// HKDF-SHA256 and AES-256-GCM. Writers only need the public key, the private key stays in the Keychain.
//
//	stechuhr-crypt keygen        create the key pair, or restore the public key from the Keychain
//	stechuhr-crypt encrypt       encrypt stdin into one line "enc:<base64>"
//	stechuhr-crypt decrypt       copy the lines of stdin, "enc:" lines decrypted
//	stechuhr-crypt seal FILE...  encrypt the plain text lines of log files in place
package main

import (
	"bufio"
	"crypto/ecdh"
	"crypto/hpke"
	"encoding/base64"
	"errors"
	"fmt"
	"io"
	"os"
	"path/filepath"
	"strings"
)

const (
	prefix  = "enc:"
	account = "private-key"
)

var (
	kem  = hpke.DHKEM(ecdh.X25519())
	kdf  = hpke.HKDFSHA256()
	aead = hpke.AES256GCM()
	info = []byte("stechuhr")
)

func main() {
	var cmd string
	if len(os.Args) > 1 {
		cmd = os.Args[1]
	}
	var err error
	switch {
	case cmd == "keygen" && len(os.Args) == 2:
		err = keygen()
	case cmd == "encrypt" && len(os.Args) == 2:
		err = encrypt()
	case cmd == "decrypt" && len(os.Args) == 2:
		err = decrypt()
	case cmd == "seal":
		err = sealFiles(os.Args[2:])
	default:
		fmt.Fprintln(os.Stderr, "Usage: stechuhr-crypt keygen|encrypt|decrypt|seal FILE...")
		os.Exit(2)
	}
	if err != nil {
		fmt.Fprintln(os.Stderr, "stechuhr-crypt:", err)
		os.Exit(1)
	}
}

// Tests use another Keychain item and public key file, so they do not touch the real key.
// They cannot use another HOME: the Keychain is found through it.
func service() string {
	if s := os.Getenv("STECHUHR_KEYCHAIN_SERVICE"); s != "" {
		return s
	}
	return "stechuhr"
}

// ~/.stechuhr-public-key, named after the Keychain item
func publicKeyPath() (string, error) {
	home, err := os.UserHomeDir()
	return filepath.Join(home, "."+service()+"-public-key"), err
}

func keygen() error {
	var priv hpke.PrivateKey
	b64, err := keychainGet(service(), account)
	switch {
	case err == nil:
		// Restore the public key, e.g. after the Keychain moved to another Mac
		if priv, err = parsePrivateKey(b64); err != nil {
			return err
		}
	case errors.Is(err, errNotFound):
		if priv, err = kem.GenerateKey(); err != nil {
			return err
		}
		raw, err := priv.Bytes()
		if err != nil {
			return err
		}
		if err := keychainAdd(service(), account, base64.StdEncoding.EncodeToString(raw)); err != nil {
			return err
		}
	default:
		// Never create a new key when the existing one could not be read
		return err
	}
	path, err := publicKeyPath()
	if err != nil {
		return err
	}
	return os.WriteFile(path, []byte(base64.StdEncoding.EncodeToString(priv.PublicKey().Bytes())+"\n"), 0644)
}

func parsePrivateKey(b64 string) (hpke.PrivateKey, error) {
	raw, err := base64.StdEncoding.DecodeString(b64)
	if err != nil {
		return nil, fmt.Errorf("private key: %w", err)
	}
	return kem.NewPrivateKey(raw)
}

func loadPublicKey() (hpke.PublicKey, error) {
	path, err := publicKeyPath()
	if err != nil {
		return nil, err
	}
	b64, err := os.ReadFile(path)
	if err != nil {
		return nil, err
	}
	raw, err := base64.StdEncoding.DecodeString(strings.TrimSpace(string(b64)))
	if err != nil {
		return nil, fmt.Errorf("%s: %w", path, err)
	}
	return kem.NewPublicKey(raw)
}

func loadPrivateKey() (hpke.PrivateKey, error) {
	b64, err := keychainGet(service(), account)
	if err != nil {
		return nil, fmt.Errorf("private key (Keychain item %q): %w", service(), err)
	}
	return parsePrivateKey(b64)
}

// One line "enc:<base64>", the plain text may span several lines
func seal(pub hpke.PublicKey, plaintext []byte) (string, error) {
	ciphertext, err := hpke.Seal(pub, kdf, aead, info, plaintext)
	if err != nil {
		return "", err
	}
	return prefix + base64.StdEncoding.EncodeToString(ciphertext) + "\n", nil
}

// Writes nothing on errors, so the caller can keep the event in plain text
func encrypt() error {
	pub, err := loadPublicKey()
	if err != nil {
		return err
	}
	plaintext, err := io.ReadAll(os.Stdin)
	if err != nil || len(plaintext) == 0 {
		return err
	}
	line, err := seal(pub, plaintext)
	if err != nil {
		return err
	}
	_, err = os.Stdout.WriteString(line)
	return err
}

func decrypt() error {
	var priv hpke.PrivateKey
	in := bufio.NewReader(os.Stdin)
	out := bufio.NewWriter(os.Stdout)
	defer out.Flush()
	for n := 1; ; n++ {
		line, readErr := in.ReadString('\n')
		if strings.HasPrefix(line, prefix) {
			// The Keychain is only read when there is something to decrypt
			if priv == nil {
				var err error
				if priv, err = loadPrivateKey(); err != nil {
					return err
				}
			}
			plaintext, err := open(priv, line)
			if err != nil {
				return fmt.Errorf("line %d: %w", n, err)
			}
			line = string(plaintext)
		}
		out.WriteString(line)
		if line != "" && !strings.HasSuffix(line, "\n") {
			out.WriteString("\n")
		}
		if readErr == io.EOF {
			return nil
		} else if readErr != nil {
			return readErr
		}
	}
}

func open(priv hpke.PrivateKey, line string) ([]byte, error) {
	ciphertext, err := base64.StdEncoding.DecodeString(strings.TrimSpace(strings.TrimPrefix(line, prefix)))
	if err != nil {
		return nil, err
	}
	return hpke.Open(priv, kdf, aead, info, ciphertext)
}

func sealFiles(paths []string) error {
	pub, err := loadPublicKey()
	if err != nil {
		return err
	}
	for _, path := range paths {
		if err := sealFile(pub, path); err != nil {
			return fmt.Errorf("%s: %w", path, err)
		}
	}
	return nil
}

// Each run of plain text lines becomes one encrypted line at the same place, so events within the same second
// keep their order. The file is replaced only if no event was appended meanwhile, otherwise it is read again.
func sealFile(pub hpke.PublicKey, path string) error {
	for {
		stat, err := os.Stat(path)
		if errors.Is(err, os.ErrNotExist) {
			return nil
		} else if err != nil {
			return err
		}
		data, err := os.ReadFile(path)
		if err != nil {
			return err
		}

		var out, plain strings.Builder
		sealed := false
		flush := func() error {
			if plain.Len() == 0 {
				return nil
			}
			line, err := seal(pub, []byte(plain.String()))
			out.WriteString(line)
			plain.Reset()
			sealed = true
			return err
		}
		for _, line := range strings.SplitAfter(string(data), "\n") {
			if strings.TrimSpace(line) == "" {
				continue
			}
			if !strings.HasSuffix(line, "\n") {
				line += "\n"
			}
			if strings.HasPrefix(line, prefix) {
				if err := flush(); err != nil {
					return err
				}
				out.WriteString(line)
			} else {
				plain.WriteString(line)
			}
		}
		if err := flush(); err != nil {
			return err
		}
		if !sealed {
			return nil
		}

		tmp, err := os.CreateTemp(filepath.Dir(path), ".stechuhr-seal-*")
		if err != nil {
			return err
		}
		_, err = tmp.WriteString(out.String())
		if err == nil {
			err = tmp.Chmod(stat.Mode().Perm())
		}
		if closeErr := tmp.Close(); err == nil {
			err = closeErr
		}
		if err == nil {
			if now, statErr := os.Stat(path); statErr == nil && now.Size() == int64(len(data)) {
				return os.Rename(tmp.Name(), path)
			}
		}
		os.Remove(tmp.Name())
		if err != nil {
			return err
		}
	}
}
