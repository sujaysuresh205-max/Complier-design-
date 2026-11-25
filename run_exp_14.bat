@echo off
set "ROOT=%~dp0"
if not exist "%ROOT%_build" mkdir "%ROOT%_build"
gcc "%ROOT%experiment-14\three_address_code.c" -o "%ROOT%_build\exp14.exe" || exit /b 1
"%ROOT%_build\exp14.exe" a+b*c
