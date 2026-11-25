@echo off
set "ROOT=%~dp0"
if not exist "%ROOT%_build" mkdir "%ROOT%_build"
gcc "%ROOT%experiment-09\left_recursion.c" -o "%ROOT%_build\exp09.exe" || exit /b 1
"%ROOT%_build\exp09.exe"
