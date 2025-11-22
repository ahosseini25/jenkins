#!/usr/bin/env bash
set -euo pipefail

# Ensure a venv exists and has pytest installed
if [ ! -d ".venv" ]; then
  python3 -m venv .venv
fi
. .venv/bin/activate

# Install pytest if it's not available in the venv yet
if ! command -v pytest >/dev/null 2>&1; then
  pip install --upgrade pip >/dev/null
  pip install -q pytest
fi

echo "Running tests for the sample project..."
pytest -q

