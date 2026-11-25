@echo off
set "ROOT=%~dp0"
if not exist "%ROOT%_build" mkdir "%ROOT%_build"
gcc "%ROOT%experiment-05\whitespace_newline_counter.c" -o "%ROOT%_build\exp05.exe" || exit /b 1
"%ROOT%_build\exp05.exe" "%ROOT%experiment-05\sample.txt"
