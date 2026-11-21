/*
 * P1 - License key validator (L2: manual obfuscation)
 * Identical observable behavior to p1_license_L0.c.
 * Techniques applied at source level:
 *   - Control-flow flattening: validate() and the decision logic are rewritten
 *     as a dispatcher loop over an explicit state variable.
 *   - Opaque predicates: OP(x) is always true but not obvious to a static tool;
 *     used to guard real transitions and inject plausible dead edges.
 *   - String encryption: output strings are stored XOR-encrypted and decrypted
 *     into a stack buffer at runtime, so no plaintext appears in the binary.
 */
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

/* opaque predicate: x*x - x is always even -> always true */
#define OP(x) ((((unsigned)(x) * (unsigned)(x) - (unsigned)(x)) & 1u) == 0u)

static const unsigned char K = 0x5A;

/* "ACCESS GRANTED" and "ACCESS DENIED" XOR-encrypted with K */
static const unsigned char ENC_G[] = {
    0x1b,0x19,0x19,0x1f,0x09,0x09,0x7a,0x1d,0x08,0x1b,0x14,0x0e,0x1f,0x1e,0x5a
};
static const unsigned char ENC_D[] = {
    0x1b,0x19,0x19,0x1f,0x09,0x09,0x7a,0x1e,0x1f,0x14,0x13,0x1f,0x1e,0x5a
};

static void dec(const unsigned char *src, char *dst) {
    size_t i = 0;
    for (;;) {
        unsigned char c = src[i] ^ K;
        dst[i] = (char)c;
        if (c == 0) break;
        i++;
    }
}

static int validate(const char *pw) {
    int state = 0;
    size_t i = 0;
    int acc = 0;
    size_t len = strlen(pw);
    int result = 0;
    for (;;) {
        switch (state) {
            case 0:
                if (OP(len)) { acc = 0; i = 0; state = 1; }
                else { state = 99; }
                break;
            case 1:
                if (i < len) { state = 2; }
                else { state = 3; }
                break;
            case 2:
                acc += (pw[i] ^ 0x5A);
                i++;
                state = OP(i) ? 1 : 99;
                break;
            case 3:
                result = (acc == 0x3F7);
                state = 100;
                break;
            case 99:
                /* unreachable sink guarded by opaque predicate */
                acc ^= 0xFFFF;
                state = 1;
                break;
            case 100:
                return result;
        }
    }
}

int main(int argc, char **argv) {
    char buf[32];
    int state = 0;
    int ok = 0;
    for (;;) {
        switch (state) {
            case 0:
                if (argc < 2) { state = 10; } else { state = 1; }
                break;
            case 1:
                ok = validate(argv[1]);
                state = OP(argc) ? 2 : 10;
                break;
            case 2:
                if (ok) { dec(ENC_G, buf); printf("%s\n", buf); return 0; }
                dec(ENC_D, buf); printf("%s\n", buf); return 1;
            case 10:
                printf("usage: %s <password>\n", argv[0]);
                return 2;
        }
    }
}
