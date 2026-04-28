#!/usr/bin/env bash
set -euo pipefail

scripts/compile-main.sh
scripts/compile-examples.sh

if grep -R '#import "../style\|#import "../slides\|#import "style/\|#import "slides/' examples; then
  echo "Examples must import the public API instead of low-level style/slides files." >&2
  exit 1
fi

echo "agent smoke test passed"

