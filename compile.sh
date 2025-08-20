#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'

files=$(find . -name main.typ)

for file in $files; do
    out="build/${file%/main.typ}.pdf"
    mkdir -p "$(dirname "$out")"
    echo "$file -> $out"
    typst compile "$file" "$out"
done
