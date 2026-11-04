#!/usr/bin/env bash
# The statistical engine is developed in QuantCompass-Local and mirrored here.
# Run from this repo's root with QuantCompass-Local cloned next to it:
#   bash scripts/sync-engine.sh
set -euo pipefail
SRC="../QuantCompass-Local"
for d in engine templates validation workflows; do rm -rf "$d"; cp -r "$SRC/$d" .; done
echo "Engine synced from $SRC. Run: Rscript validation/run_validation.R"
