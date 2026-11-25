@echo off
set "ROOT=%~dp0"
if not exist "%ROOT%_build" mkdir "%ROOT%_build"
gcc "%ROOT%experiment-04\arithmetic_operator_lexer.c" -o "%ROOT%_build\exp04.exe" || exit /b 1
"%ROOT%_build\exp04.exe" "%ROOT%experiment-04\sample.txt"
