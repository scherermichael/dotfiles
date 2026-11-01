package main

// Asking for the private key without echo. readpassphrase(3) would do it, but its signal handlers lack
// SA_ONSTACK, without which a Go program may crash on Ctrl-C.

/*
#include <termios.h>
*/
import "C"
import (
	"bufio"
	"errors"
	"fmt"
	"io"
	"os"
	"os/signal"
)

// The private key from stdin: asked for without echo on a terminal, or piped, e.g. from a password manager
func askPrivateKey() (string, error) {
	var saved C.struct_termios
	if C.tcgetattr(0, &saved) != 0 {
		b, err := io.ReadAll(os.Stdin)
		return string(b), err
	}
	noEcho := saved
	noEcho.c_lflag &^= C.ECHO
	if C.tcsetattr(0, C.TCSANOW, &noEcho) != 0 {
		return "", errors.New("cannot switch off the echo of the terminal")
	}
	restore := func() {
		C.tcsetattr(0, C.TCSANOW, &saved)
		fmt.Fprintln(os.Stderr) // the newline was not echoed either
	}

	// Ctrl-C must not leave the echo off
	interrupt := make(chan os.Signal, 1)
	signal.Notify(interrupt, os.Interrupt)
	done := make(chan struct{})
	go func() {
		select {
		case <-interrupt:
			restore()
			os.Exit(130)
		case <-done:
		}
	}()

	fmt.Fprint(os.Stderr, "Private key (base64): ")
	line, err := bufio.NewReader(os.Stdin).ReadString('\n')
	restore()
	signal.Stop(interrupt)
	close(done)
	if errors.Is(err, io.EOF) {
		err = nil
	}
	return line, err
}
