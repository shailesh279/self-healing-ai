#!/usr/bin/env bash
set -euxo pipefail

export PLAYWRIGHT_BROWSERS_PATH="$PWD/.playwright-browsers"

python -m pip install -r requirements.txt
python -m playwright install chromium

echo "Checking installed Playwright browsers..."
python -m playwright install --list
ls -la "$PLAYWRIGHT_BROWSERS_PATH"
