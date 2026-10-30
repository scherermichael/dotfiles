package main

// Keychain access through the Security framework, like in seal-streamdeck-worklog (editor/crypto/keychain_darwin.go).
// The Keychain trusts the binary that added the item, so it can read the item without a password prompt.
// Running /usr/bin/security instead would mean trusting a tool that any process can run.

/*
#cgo LDFLAGS: -framework Security -framework CoreFoundation
#include <Security/Security.h>
#include <CoreFoundation/CoreFoundation.h>
#include <stdlib.h>
#include <string.h>

static char* kcGet(const char *service, const char *account, int *status) {
    CFStringRef svc  = CFStringCreateWithCString(NULL, service, kCFStringEncodingUTF8);
    CFStringRef acct = CFStringCreateWithCString(NULL, account, kCFStringEncodingUTF8);

    const void *keys[] = { kSecClass, kSecAttrService, kSecAttrAccount,
                           kSecReturnData, kSecMatchLimit };
    const void *vals[] = { kSecClassGenericPassword, svc, acct,
                           kCFBooleanTrue, kSecMatchLimitOne };
    CFDictionaryRef q = CFDictionaryCreate(NULL, keys, vals, 5,
        &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);

    CFTypeRef result = NULL;
    *status = (int)SecItemCopyMatching(q, &result);

    CFRelease(q);
    CFRelease(svc);
    CFRelease(acct);

    if (*status != 0 || result == NULL) return NULL;

    CFDataRef data = (CFDataRef)result;
    CFIndex   len  = CFDataGetLength(data);
    char     *buf  = (char *)malloc(len + 1);
    if (buf) { memcpy(buf, CFDataGetBytePtr(data), len); buf[len] = '\0'; }
    CFRelease(data);
    return buf;
}

// Add only, never update: an existing private key must not be replaced
static int kcAdd(const char *service, const char *account, const char *value) {
    CFStringRef svc  = CFStringCreateWithCString(NULL, service, kCFStringEncodingUTF8);
    CFStringRef acct = CFStringCreateWithCString(NULL, account, kCFStringEncodingUTF8);
    CFDataRef   data = CFDataCreate(NULL, (const UInt8 *)value, (CFIndex)strlen(value));

    const void *keys[] = { kSecClass, kSecAttrService, kSecAttrAccount, kSecValueData };
    const void *vals[] = { kSecClassGenericPassword, svc, acct, data };
    CFDictionaryRef a = CFDictionaryCreate(NULL, keys, vals, 4,
        &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    OSStatus st = SecItemAdd(a, NULL);

    CFRelease(a); CFRelease(data);
    CFRelease(svc); CFRelease(acct);
    return (int)st;
}
*/
import "C"
import (
	"errors"
	"fmt"
	"unsafe"
)

var errNotFound = errors.New("not in the Keychain")

func keychainGet(service, account string) (string, error) {
	cSvc := C.CString(service)
	cAcct := C.CString(account)
	defer C.free(unsafe.Pointer(cSvc))
	defer C.free(unsafe.Pointer(cAcct))

	var status C.int
	p := C.kcGet(cSvc, cAcct, &status)
	if p == nil {
		if status == C.errSecItemNotFound {
			return "", errNotFound
		}
		return "", fmt.Errorf("Keychain: OSStatus %d", int(status))
	}
	defer C.free(unsafe.Pointer(p))
	return C.GoString(p), nil
}

func keychainAdd(service, account, value string) error {
	cSvc := C.CString(service)
	cAcct := C.CString(account)
	cValue := C.CString(value)
	defer C.free(unsafe.Pointer(cSvc))
	defer C.free(unsafe.Pointer(cAcct))
	defer C.free(unsafe.Pointer(cValue))

	if st := C.kcAdd(cSvc, cAcct, cValue); st != 0 {
		return fmt.Errorf("Keychain: OSStatus %d", int(st))
	}
	return nil
}
