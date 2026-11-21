#!/usr/bin/env python3
"""Generate disassembly, static metrics, control-flow complexity, and the
recovery figure for the study.
Run build.sh first, then: python3 analyze.py
Outputs: disasm/*.asm, results/metrics.csv, results/cfg_complexity.csv,
results/recovery.png"""
import os, re, csv, subprocess

HERE = os.path.dirname(os.path.abspath(__file__))
BIN = os.path.join(HERE, "bin")
DIS = os.path.join(HERE, "disasm")
RES = os.path.join(HERE, "results")
os.makedirs(DIS, exist_ok=True)
os.makedirs(RES, exist_ok=True)

PROGS = ["p1", "p2", "p3", "p4"]
LEVELS = ["L0", "L1", "L2"]


def sh(cmd):
    return subprocess.run(cmd, shell=True, capture_output=True, text=True).stdout


def main():
    # 1. Disassemble every variant
    for p in PROGS:
        for l in LEVELS:
            b = f"{BIN}/{p}_{l}"
            if os.path.exists(b):
                open(f"{DIS}/{p}_{l}.asm", "w").write(
                    sh(f"objdump -d --no-show-raw-insn {b}"))

    # 2. Static metrics
    srows = []
    for p in PROGS:
        for l in LEVELS:
            b = f"{BIN}/{p}_{l}"
            if not os.path.exists(b):
                continue
            size = os.path.getsize(b)
            syms = len([x for x in sh(f"nm {b} 2>/dev/null").splitlines() if x.strip()])
            s = sh(f"strings {b}")
            strs = len(s.splitlines())
            secret = "yes" if re.search(r"ACCESS|VALID|SERIAL", s) else "no/na"
            srows.append([p, l, size, syms, strs, secret])
    with open(f"{RES}/metrics.csv", "w", newline="") as f:
        w = csv.writer(f)
        w.writerow(["prog", "level", "file_bytes", "symbols", "strings", "secret_present"])
        w.writerows(srows)
    print("metrics.csv written")

    # 3. Control-flow complexity proxy
    crows = []
    for p in PROGS:
        for l in LEVELS:
            fp = f"{DIS}/{p}_{l}.asm"
            if not os.path.exists(fp):
                continue
            a = open(fp).read()
            cond = len(re.findall(r'\n\s+[0-9a-f]+:\s+(?:je|jne|jg|jl|jge|jle|ja|jb|jae|jbe|jnz|jz|js|jns)\b', a))
            uncond = len(re.findall(r'\n\s+[0-9a-f]+:\s+jmp\b', a))
            indirect = len(re.findall(r'jmp\s+\*', a))
            crows.append([p, l, cond, uncond, indirect])
    with open(f"{RES}/cfg_complexity.csv", "w", newline="") as f:
        w = csv.writer(f)
        w.writerow(["prog", "level", "cond_branches", "uncond_jmps", "indirect_jmps"])
        w.writerows(crows)
    print("cfg_complexity.csv written")

    # 4. Recovery figure (scores from analyst protocol; see results/analyst_scores.csv)
    try:
        import matplotlib
        matplotlib.use("Agg")
        import matplotlib.pyplot as plt
        levels = ["L0\n(none)", "L1\n(strip+opt)", "L2\n(obfuscate)"]
        purpose = [5, 4, 2]
        secret = [5, 5, 3.5]
        x = range(len(levels)); wd = 0.35
        fig, ax = plt.subplots(figsize=(4.2, 2.8))
        ax.bar([i - wd / 2 for i in x], purpose, wd, label="Purpose recovery", color="#3b6ea5")
        ax.bar([i + wd / 2 for i in x], secret, wd, label="Secret recovery", color="#b5651d")
        ax.set_xticks(list(x)); ax.set_xticklabels(levels, fontsize=8)
        ax.set_ylabel("Mean analyst score (0-5)", fontsize=8)
        ax.set_ylim(0, 5.5); ax.legend(fontsize=7); ax.grid(axis="y", alpha=0.3)
        plt.tight_layout()
        plt.savefig(f"{RES}/recovery.pdf")
        plt.savefig(f"{RES}/recovery.png", dpi=140)
        print("recovery figure written")
    except ImportError:
        print("matplotlib not installed; skipping figure")


if __name__ == "__main__":
    main()
