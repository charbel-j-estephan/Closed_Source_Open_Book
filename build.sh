#!/usr/bin/env bash
# Build all protection variants of the four sample programs.
# L0 = none (symbols, -O0); L1 = strip + -O2; L2 = obfuscated source + strip + -O2
set -e
HERE="$(cd "$(dirname "$0")" && pwd)"
SRC="$HERE/src"; BIN="$HERE/bin"
mkdir -p "$BIN"

build() { # $1=prog stem (p1..p4), $2=L0 source stem, $3=L2 source stem
  gcc -O0 "$SRC/$2" -o "$BIN/${1}_L0"
  gcc -O2 "$SRC/$2" -o "$BIN/${1}_L1" && strip -s "$BIN/${1}_L1"
  gcc -O2 "$SRC/$3" -o "$BIN/${1}_L2" && strip -s "$BIN/${1}_L2"
}

build p1 p1_license_L0.c p1_license_L2.c
build p2 p2_collatz_L0.c p2_collatz_L2.c
build p3 p3_hash_L0.c    p3_hash_L2.c
build p4 p4_serial_L0.c  p4_serial_L2.c

echo "Built:"; ls -1 "$BIN"

echo
echo "Behavioral equivalence check (all levels must match within a program):"
for l in L0 L1 L2; do echo "  p1 $l: $("$BIN/p1_$l" '?????????0') / $("$BIN/p1_$l" wrong)"; done
for l in L0 L1 L2; do echo "  p2 $l: 27 -> $("$BIN/p2_$l" 27)"; done
for l in L0 L1 L2; do echo "  p3 $l: NDU2026 -> $("$BIN/p3_$l" NDU2026) / foo -> $("$BIN/p3_$l" foo)"; done
for l in L0 L1 L2; do echo "  p4 $l: 12345678 -> $("$BIN/p4_$l" 12345678) / 99 -> $("$BIN/p4_$l" 99)"; done
