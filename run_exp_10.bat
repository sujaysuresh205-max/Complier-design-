@echo off
set "ROOT=%~dp0"
if not exist "%ROOT%_build" mkdir "%ROOT%_build"
gcc "%ROOT%experiment-10\left_factoring.c" -o "%ROOT%_build\exp10.exe" || exit /b 1
"%ROOT%_build\exp10.exe"
