#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
INPUT="${1:-$SCRIPT_DIR/slides.md}"
OUTPUT="${2:-$SCRIPT_DIR/slides.pdf}"

if [ ! -f "$INPUT" ]; then
    echo "Error: Input file '$INPUT' not found." >&2
    exit 1
fi

if ! command -v pandoc &>/dev/null; then
    echo "Error: pandoc is not installed." >&2
    exit 1
fi

echo "Converting '$INPUT' to '$OUTPUT'..."

pandoc "$INPUT" \
    -f markdown \
    -t beamer \
    -o "$OUTPUT" \
    --pdf-engine=xelatex \
    -V mainfont="DejaVu Sans" \
    -V monofont="DejaVu Sans Mono" \
    -V fontsize=9pt \
    --wrap=none \
    --slide-level=3

echo "Done! PDF saved to '$OUTPUT'"
