#!/usr/bin/env bash
set -euo pipefail

mkdir -p build/examples

for file in examples/*.typ; do
  name="$(basename "${file%.typ}")"
  typst compile --root . "$file" "build/examples/${name}.pdf"
done
