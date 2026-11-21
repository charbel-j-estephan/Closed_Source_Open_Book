/*
 * P3 - djb2 hash key check (baseline, readable)
 * Ground truth behavior:
 *   Reads a key from argv[1], computes the djb2 string hash
 *   (hash = hash*33 + c, seeded at 5381), and grants iff the hash equals
 *   the target 0xD0AB1CBB4B96 (which is djb2("NDU2026")).
 *   Prints "VALID KEY" or "INVALID KEY".
 */
#include <stdio.h>

#define TARGET 0xD0AB1CBB4B96UL

static unsigned long djb2(const char *s) {
    unsigned long hash = 5381;
    int c;
    while ((c = *s++))
        hash = ((hash << 5) + hash) + c; /* hash * 33 + c */
    return hash;
}

int main(int argc, char **argv) {
    if (argc < 2) {
        printf("usage: %s <key>\n", argv[0]);
        return 2;
    }
    if (djb2(argv[1]) == TARGET) {
        printf("VALID KEY\n");
        return 0;
    }
    printf("INVALID KEY\n");
    return 1;
}
