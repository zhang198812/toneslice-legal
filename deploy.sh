#!/bin/bash
set -euo pipefail

REPO="git@github.com:zhang198812/toneslice-legal.git"
DIR="$(cd "$(dirname "$0")" && pwd)"

cd "$DIR"

if ! git remote get-url origin &>/dev/null; then
  git remote add origin "$REPO"
fi

echo "Pushing to $REPO ..."
git push -u origin main

echo ""
echo "GitHub Pages (Settings → Pages): main branch /docs folder"
echo ""
echo "Live URLs (may take up to 10 minutes after push):"
echo "  https://zhang198812.github.io/toneslice-legal/privacy.html"
echo "  https://zhang198812.github.io/toneslice-legal/terms.html"
