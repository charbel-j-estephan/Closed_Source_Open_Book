/*
 * P1 - License key validator (baseline, readable)
 * Ground truth behavior:
 *   Reads a password from argv[1].
 *   Computes a checksum: for each character, XOR it with 0x5A and add to an
 *   accumulator. The password is valid iff the accumulator equals 0x3F7.
 *   On success prints "ACCESS GRANTED", otherwise "ACCESS DENIED".
 */
#include <stdio.h>
#include <string.h>

#define MAGIC 0x3F7

static int validate(const char *pw) {
    int acc = 0;
    for (size_t i = 0; i < strlen(pw); i++) {
        acc += (pw[i] ^ 0x5A);
    }
    return acc == MAGIC;
}

int main(int argc, char **argv) {
    if (argc < 2) {
        printf("usage: %s <password>\n", argv[0]);
        return 2;
    }
    if (validate(argv[1])) {
        printf("ACCESS GRANTED\n");
        return 0;
    }
    printf("ACCESS DENIED\n");
    return 1;
}
