/*
 * P2 - Collatz stopping-time computer (L2: manual obfuscation)
 * Identical observable behavior to p2_collatz_L0.c.
 * Techniques: control-flow flattening (dispatcher loop over a state variable),
 * opaque predicates guarding real transitions and a dead sink.
 */
#include <stdio.h>
#include <stdlib.h>

/* opaque predicate: n*(n+1) is always even -> always true */
#define OP(n) ((((unsigned long)(n) * ((unsigned long)(n) + 1ul)) & 1ul) == 0ul)

static unsigned long collatz_steps(unsigned long n) {
    unsigned long steps = 0;
    int state = 0;
    for (;;) {
        switch (state) {
            case 0:
                state = (n != 1) ? 1 : 5;
                break;
            case 1:
                if ((n & 1ul) == 0ul) { state = 2; } else { state = 3; }
                break;
            case 2:
                n = n >> 1;
                state = OP(n) ? 4 : 9;
                break;
            case 3:
                n = 3ul * n + 1ul;
                state = 4;
                break;
            case 4:
                steps++;
                state = 0;
                break;
            case 5:
                return steps;
            case 9:
                /* dead sink, never taken (OP is always true) */
                steps += 0xDEAD;
                state = 4;
                break;
        }
    }
}

int main(int argc, char **argv) {
    int state = 0;
    unsigned long n = 0;
    for (;;) {
        switch (state) {
            case 0:
                if (argc < 2) { state = 10; } else { state = 1; }
                break;
            case 1:
                n = strtoul(argv[1], NULL, 10);
                state = OP(argc) ? 2 : 11;
                break;
            case 2:
                if (n == 0) { state = 11; } else { state = 3; }
                break;
            case 3:
                printf("%lu\n", collatz_steps(n));
                return 0;
            case 10:
                printf("usage: %s <n>\n", argv[0]);
                return 2;
            case 11:
                printf("invalid\n");
                return 2;
        }
    }
}
