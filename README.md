# Resistance of Protected Executables to AI-Assisted Reverse Engineering

A small, reproducible measurement study for CSC316 (Fundamentals of Computer
Security). We measure how much of a program's purpose and secret an analyst can
recover from a compiled binary as cumulative software protections are applied,
with a large language model acting as the analyst.

## Idea

AI-assisted reverse engineering consumes the same artifacts a human analyst
does: symbols, strings, data constants, and recoverable control flow. Making an
executable "AI resistant" means degrading those artifacts. We test three
cumulative protection levels and show where lightweight protection succeeds and
where it fails.

## Protection levels

- **L0 (none):** `gcc -O0`, symbols kept.
- **L1 (strip+opt):** `gcc -O2` then `strip -s`.
- **L2 (obfuscated):** control-flow flattening + opaque predicates + string
  encryption at source level, then `gcc -O2` and `strip -s`.

## Sample programs

- **P1** `src/p1_license_*.c` — license validator (XOR-sum of the password
  compared against `0x3F7`).
- **P2** `src/p2_collatz_*.c` — Collatz stopping-time computer (`3n+1`).

Each has an `L0` (readable) and an `L2` (obfuscated) source; `L1` is `L0`
compiled with optimization and stripped.

## Reproduce

```bash
./build.sh          # builds bin/, checks behavioral equivalence
python3 analyze.py  # writes disasm/, results/metrics.csv, results/recovery.png
```

## Layout

```
src/        C sources (L0 readable, L2 obfuscated)
build.sh    builds all six variants and verifies equivalence
analyze.py  disassembly + static metrics + figure
disasm/     objdump output per variant
results/    metrics.csv, analyst_scores.csv, recovery figure
paper/      IEEE LaTeX source (main.tex, IEEEtran.cls) and compiled main.pdf
```

## Key result

Symbol stripping barely dents recovery; string encryption cheaply defeats
triage; control-flow flattening halves purpose recovery (5.0 -> 2.0 / 5). But
the defining data constants survive source-level obfuscation, so secret recovery
falls only to 3.5 / 5. Hiding secrets from a determined analyst needs binary
virtualization.
