@echo off
set "ROOT=%~dp0"
if not exist "%ROOT%_build" mkdir "%ROOT%_build"
gcc "%ROOT%experiment-06\identifier_validator.c" -o "%ROOT%_build\exp06.exe" || exit /b 1
"%ROOT%_build\exp06.exe" compiler_2026
