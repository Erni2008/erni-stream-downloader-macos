#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

python3 -m pip install -r requirements.txt
python3 -m PyInstaller \
  --noconfirm \
  --windowed \
  --name "ERNI Stream Downloader" \
  app.py

echo "Built: dist/ERNI Stream Downloader.app"

