#!/bin/sh
if [ ! -d .venv ]; then
  uv venv .venv
  uv pip install -r requirements.txt
fi
set -a
if [ -f .env ]; then
  . .env
fi
set +a
. .venv/bin/activate
python main.py
