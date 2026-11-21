#!/usr/bin/env bash
# Optional L3 (packing) level. Requires UPX installed locally: `sudo apt install upx-ucl`
# or download from https://github.com/upx/upx/releases. Not run in the paper's
# sandbox (no packer available there); provided so the packing level can be
# reproduced on your own machine.
set -e
HERE="$(cd "$(dirname "$0")" && pwd)"; BIN="$HERE/bin"
command -v upx >/dev/null || { echo "UPX not installed; see header."; exit 1; }
for p in p1 p2 p3 p4; do
  cp "$BIN/${p}_L2" "$BIN/${p}_L3"
  upx -9 -q "$BIN/${p}_L3" >/dev/null
done
echo "Packed L3 binaries created. Compare: strings/objdump on L2 vs L3."
