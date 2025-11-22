#!/usr/bin/env bash
set -euo pipefail

# Activate venv if it exists
if [ -f ".venv/bin/activate" ]; then
  . .venv/bin/activate
fi

echo "Running tests for the sample project..."
pytest -q
