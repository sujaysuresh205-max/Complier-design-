@echo off
set "ROOT=%~dp0"
if not exist "%ROOT%_build" mkdir "%ROOT%_build"
gcc "%ROOT%experiment-01\lexical_analyzer.c" -o "%ROOT%_build\exp01.exe" || exit /b 1
"%ROOT%_build\exp01.exe" "%ROOT%experiment-01\sample.c"
