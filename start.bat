@echo off
setlocal
if not exist .venv (
  uv venv .venv
  uv pip install -r requirements.txt
)
if exist .env (
  for /f "usebackq delims=" %%a in (".env") do set "%%a"
)
call .venv\Scripts\activate
python main.py
endlocal
