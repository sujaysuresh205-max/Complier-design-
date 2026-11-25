@echo off
set "ROOT=%~dp0"
if not exist "%ROOT%_build" mkdir "%ROOT%_build"
gcc "%ROOT%experiment-21\count_vowels.c" -o "%ROOT%_build\exp21.exe" || exit /b 1
echo Compiler Design | "%ROOT%_build\exp21.exe"
