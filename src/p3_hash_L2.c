/*
 * P3 - djb2 hash key check (L2: manual obfuscation)
 * Identical behavior to p3_hash_L0.c.
 * Techniques: control-flow flattening, opaque predicate, string encryption.
 */
#include <stdio.h>

#define TARGET 0xD0AB1CBB4B96UL
#define OP(x) ((((unsigned long)(x) * ((unsigned long)(x) + 1ul)) & 1ul) == 0ul)

static const unsigned char K = 0x5A;
/* "VALID KEY" and "INVALID KEY" XOR-encrypted with K (terminator stored 0x5A) */
static const unsigned char ENC_V[] = {
    0x0c,0x1b,0x16,0x13,0x1e,0x7a,0x11,0x1f,0x03,0x5a
};
static const unsigned char ENC_I[] = {
    0x13,0x14,0x0c,0x1b,0x16,0x13,0x1e,0x7a,0x11,0x1f,0x03,0x5a
};

static void dec(const unsigned char *src, char *dst) {
    size_t i = 0;
    for (;;) { unsigned char c = src[i] ^ K; dst[i] = (char)c; if (c == 0) break; i++; }
}

static unsigned long djb2(const char *s) {
    unsigned long hash = 5381;
    int state = 0, c = 0;
    for (;;) {
        switch (state) {
            case 0: c = *s++; state = (c != 0) ? 1 : 2; break;
            case 1: hash = ((hash << 5) + hash) + (unsigned long)c;
                    state = OP(hash) ? 0 : 9; break;
            case 2: return hash;
            case 9: hash ^= 0xDEADUL; state = 0; break; /* dead sink */
        }
    }
}

int main(int argc, char **argv) {
    char buf[32];
    int state = 0, ok = 0;
    for (;;) {
        switch (state) {
            case 0: if (argc < 2) { state = 10; } else { state = 1; } break;
            case 1: ok = (djb2(argv[1]) == TARGET); state = OP(argc) ? 2 : 10; break;
            case 2:
                if (ok) { dec(ENC_V, buf); printf("%s\n", buf); return 0; }
                dec(ENC_I, buf); printf("%s\n", buf); return 1;
            case 10: printf("usage: %s <key>\n", argv[0]); return 2;
        }
    }
}
