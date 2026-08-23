@echo off
setlocal
cd /d "%~dp0"

echo.
echo  ============================================
echo     Breakout - starting local web server
echo  ============================================
echo.
echo  Opening: http://localhost:8000/breakout.html
echo.
echo  This window runs the server. Press Ctrl+C to stop it later.
echo.

:: Try Python first (python3 or python)
where python >nul 2>nul
if %errorlevel%==0 (
    start "" cmd /c "python -m http.server 8000"
    goto :open
)

where python3 >nul 2>nul
if %errorlevel%==0 (
    start "" cmd /c "python3 -m http.server 8000"
    goto :open
)

:: Fall back to Node.js + serve
where node >nul 2>nul
if %errorlevel%==0 (
    start "" cmd /c "npx --yes serve -l 8000 ."
    goto :open
)

echo No Python or Node found on this PC.
echo Open breakout.html directly in your browser instead.
endlocal
pause
exit /b

:open
timeout /t 3 >nul
start "" http://localhost:8000/breakout.html
endlocal
