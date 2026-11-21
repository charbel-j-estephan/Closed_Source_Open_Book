/*
 * P2 - Collatz stopping-time computer (baseline, readable)
 * Ground truth behavior:
 *   Reads an integer n from argv[1].
 *   Repeatedly applies the Collatz map: if n is even, n = n/2; if odd,
 *   n = 3n + 1. Counts how many steps until n reaches 1 (the stopping time).
 *   Prints the step count.
 */
#include <stdio.h>
#include <stdlib.h>

static unsigned long collatz_steps(unsigned long n) {
    unsigned long steps = 0;
    while (n != 1) {
        if (n % 2 == 0) {
            n = n / 2;
        } else {
            n = 3 * n + 1;
        }
        steps++;
    }
    return steps;
}

int main(int argc, char **argv) {
    if (argc < 2) {
        printf("usage: %s <n>\n", argv[0]);
        return 2;
    }
    unsigned long n = strtoul(argv[1], NULL, 10);
    if (n == 0) {
        printf("invalid\n");
        return 2;
    }
    printf("%lu\n", collatz_steps(n));
    return 0;
}
