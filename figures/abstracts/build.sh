#!/bin/sh
set -eu
repo_root=$(CDPATH= cd -- "$(dirname -- "$0")/../.." && pwd)
cd "$repo_root"
mkdir -p .local/figures/export .local/figures/build figures/abstracts/assets
for name in snaptag; do
  python3 -I ../research-ops/.agents/skills/tikz-graphical-abstracts/scripts/render.py \
    "figures/abstracts/$name.tex" --out-dir .local/figures/export \
    --build-dir .local/figures/build --svg
  cp ".local/figures/export/$name.png" "figures/abstracts/assets/$name.png"
  cp ".local/figures/export/$name.svg" "figures/abstracts/assets/$name.svg"
done
