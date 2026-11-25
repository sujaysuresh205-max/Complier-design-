@echo off
set "ROOT=%~dp0"
if not exist "%ROOT%_build" mkdir "%ROOT%_build"
gcc "%ROOT%experiment-17\leading.c" -o "%ROOT%_build\exp17.exe" || exit /b 1
"%ROOT%_build\exp17.exe"
