#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
INPUT="${1:-$SCRIPT_DIR/course.md}"
OUTPUT="${2:-$SCRIPT_DIR/course.pdf}"

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
    -t pdf \
    -o "$OUTPUT" \
    --pdf-engine=xelatex \
    -V geometry:margin=1in \
    -V fontsize=11pt \
    -V documentclass=report \
    -V colorlinks=true \
    -V linkcolor=blue \
    -V urlcolor=blue \
    -V toccolor=black \
    -V mainfont="DejaVu Sans" \
    -V monofont="DejaVu Sans Mono" \
    --toc \
    --toc-depth=2 \
    --highlight-style=tango \
    --wrap=none

echo "Done! PDF saved to '$OUTPUT'"