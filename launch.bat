@echo off
setlocal
cd /d "%~dp0"
where py >nul 2>nul
if %errorlevel%==0 (
  py -3 unrealbot.py
) else (
  python unrealbot.py
)
if errorlevel 1 (
  echo.
  echo UnrealBot exited with an error. Check Python installation and try again.
  pause
)
