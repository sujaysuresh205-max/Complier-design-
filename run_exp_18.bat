@echo off
set "ROOT=%~dp0"
if not exist "%ROOT%_build" mkdir "%ROOT%_build"
gcc "%ROOT%experiment-18\trailing.c" -o "%ROOT%_build\exp18.exe" || exit /b 1
"%ROOT%_build\exp18.exe"
