/*
 * P4 - Serial-number validator (baseline, readable)
 * Ground truth behavior:
 *   Reads a serial from argv[1]. Valid iff it is exactly 8 characters, every
 *   character is a digit, and the last digit equals the sum of the first seven
 *   digits modulo 10 (a mod-10 check digit). Prints "SERIAL OK" / "SERIAL BAD".
 *   Example of a valid serial: 12345678 (1+2+3+4+5+6+7 = 28, 28 % 10 = 8).
 */
#include <stdio.h>
#include <string.h>

static int valid(const char *s) {
    if (strlen(s) != 8) return 0;
    for (int i = 0; i < 8; i++)
        if (s[i] < '0' || s[i] > '9') return 0;
    int sum = 0;
    for (int i = 0; i < 7; i++)
        sum += (s[i] - '0');
    int check = sum % 10;
    return (s[7] - '0') == check;
}

int main(int argc, char **argv) {
    if (argc < 2) {
        printf("usage: %s <serial>\n", argv[0]);
        return 2;
    }
    if (valid(argv[1])) {
        printf("SERIAL OK\n");
        return 0;
    }
    printf("SERIAL BAD\n");
    return 1;
}
