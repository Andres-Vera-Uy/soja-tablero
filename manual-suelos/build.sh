#!/bin/sh
# Regenera manual-suelos-uruguay.pdf a partir del HTML (Chromium headless).
# Uso: ./build.sh  (requiere Chromium/Chrome instalado)
DIR="$(cd "$(dirname "$0")" && pwd)"
CHROME="${CHROME:-chromium}"
command -v "$CHROME" >/dev/null 2>&1 || CHROME=google-chrome
"$CHROME" --headless --disable-gpu --no-sandbox \
  --print-to-pdf="$DIR/manual-suelos-uruguay.pdf" \
  --no-pdf-header-footer --virtual-time-budget=8000 \
  "file://$DIR/manual-suelos-uruguay.html"
echo "PDF regenerado: $DIR/manual-suelos-uruguay.pdf"
