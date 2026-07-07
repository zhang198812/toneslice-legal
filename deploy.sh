#!/bin/bash
set -euo pipefail

REPO="git@github.com:zhang198812/toneslice-legal.git"
DIR="$(cd "$(dirname "$0")" && pwd)"

cd "$DIR"

if ! git remote get-url origin &>/dev/null; then
  git remote add origin "$REPO"
fi

echo "Pushing to $REPO ..."
echo "Note: Create the empty public repo 'toneslice-legal' on https://github.com/zhang198812 first."
git push -u origin main

echo ""
echo "After push, enable GitHub Pages:"
echo "  https://github.com/zhang198812/toneslice-legal/settings/pages"
echo "  Branch: main / (root)"
echo ""
echo "Live URLs:"
echo "  https://zhang198812.github.io/toneslice-legal/privacy.html"
echo "  https://zhang198812.github.io/toneslice-legal/terms.html"
