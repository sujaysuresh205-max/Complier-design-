@echo off
set "ROOT=%~dp0"
if not exist "%ROOT%_build" mkdir "%ROOT%_build"
gcc "%ROOT%experiment-12\recursive_descent.c" -o "%ROOT%_build\exp12.exe" || exit /b 1
"%ROOT%_build\exp12.exe" "id+id*id"
