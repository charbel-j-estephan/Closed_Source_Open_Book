#!/usr/bin/env bash
# Build all protection variants of both sample programs.
# L0 = none (symbols, -O0); L1 = strip + -O2; L2 = obfuscated source + strip + -O2
set -e
HERE="$(cd "$(dirname "$0")" && pwd)"
SRC="$HERE/src"; BIN="$HERE/bin"
mkdir -p "$BIN"

gcc -O0 "$SRC/p1_license_L0.c" -o "$BIN/p1_L0"
gcc -O0 "$SRC/p2_collatz_L0.c" -o "$BIN/p2_L0"

gcc -O2 "$SRC/p1_license_L0.c" -o "$BIN/p1_L1" && strip -s "$BIN/p1_L1"
gcc -O2 "$SRC/p2_collatz_L0.c" -o "$BIN/p2_L1" && strip -s "$BIN/p2_L1"

gcc -O2 "$SRC/p1_license_L2.c" -o "$BIN/p1_L2" && strip -s "$BIN/p1_L2"
gcc -O2 "$SRC/p2_collatz_L2.c" -o "$BIN/p2_L2" && strip -s "$BIN/p2_L2"

echo "Built:"; ls -1 "$BIN"

echo
echo "Behavioral equivalence check:"
PW='?????????0'
for l in L0 L1 L2; do
  echo "  p1 $l valid=$("$BIN/p1_$l" "$PW")  invalid=$("$BIN/p1_$l" wrong)"
done
for l in L0 L1 L2; do
  echo "  p2 $l 6=$("$BIN/p2_$l" 6) 27=$("$BIN/p2_$l" 27) 97=$("$BIN/p2_$l" 97)"
done
