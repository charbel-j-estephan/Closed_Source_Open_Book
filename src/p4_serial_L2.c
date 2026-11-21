/*
 * P4 - Serial-number validator (L2: manual obfuscation)
 * Identical behavior to p4_serial_L0.c.
 * Techniques: control-flow flattening, opaque predicates, string encryption.
 */
#include <stdio.h>
#include <string.h>

#define OP(x) ((((unsigned long)(x) * ((unsigned long)(x) + 1ul)) & 1ul) == 0ul)

static const unsigned char K = 0x5A;
/* "SERIAL OK" and "SERIAL BAD" XOR-encrypted with K (terminator stored 0x5A) */
static const unsigned char ENC_OK[] = {
    0x09,0x1f,0x08,0x13,0x1b,0x16,0x7a,0x15,0x11,0x5a
};
static const unsigned char ENC_BAD[] = {
    0x09,0x1f,0x08,0x13,0x1b,0x16,0x7a,0x18,0x1b,0x1e,0x5a
};

static void dec(const unsigned char *src, char *dst) {
    size_t i = 0;
    for (;;) { unsigned char c = src[i] ^ K; dst[i] = (char)c; if (c == 0) break; i++; }
}

static int valid(const char *s) {
    int state = 0, i = 0, sum = 0, check = 0, result = 0;
    size_t len = 0;
    for (;;) {
        switch (state) {
            case 0: len = strlen(s); state = (len == 8) ? 1 : 100; break;
            case 1: i = 0; state = 2; break;
            case 2: if (i < 8) state = 3; else { i = 0; sum = 0; state = 4; } break;
            case 3:
                if (s[i] < '0' || s[i] > '9') { result = 0; state = 101; }
                else { i++; state = OP(i) ? 2 : 9; }
                break;
            case 4: if (i < 7) state = 5; else state = 6; break;
            case 5: sum += (s[i] - '0'); i++; state = OP(sum) ? 4 : 9; break;
            case 6: check = sum % 10; result = ((s[7] - '0') == check); state = 101; break;
            case 9: sum ^= 0xDEAD; state = 4; break; /* dead sink */
            case 100: result = 0; state = 101; break;
            case 101: return result;
        }
    }
}

int main(int argc, char **argv) {
    char buf[32];
    int state = 0, ok = 0;
    for (;;) {
        switch (state) {
            case 0: if (argc < 2) state = 10; else state = 1; break;
            case 1: ok = valid(argv[1]); state = OP(argc) ? 2 : 10; break;
            case 2:
                if (ok) { dec(ENC_OK, buf); printf("%s\n", buf); return 0; }
                dec(ENC_BAD, buf); printf("%s\n", buf); return 1;
            case 10: printf("usage: %s <serial>\n", argv[0]); return 2;
        }
    }
}
