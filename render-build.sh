#!/usr/bin/env bash
set -euxo pipefail

python -m pip install -r requirements.txt
python -m playwright install chromium

echo "Checking installed Playwright browsers..."
python -m playwright install --list
