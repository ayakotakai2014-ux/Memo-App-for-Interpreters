@echo off
cd /d "%~dp0"

netstat -ano | findstr :8080 | findstr LISTENING >nul
if errorlevel 1 (
  start "Interpreter Notes Server" /min node serve.js
  timeout /t 2 /nobreak >nul
)

start "" "http://localhost:8080/"
