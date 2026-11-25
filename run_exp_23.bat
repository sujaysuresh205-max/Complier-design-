@echo off
set "ROOT=%~dp0"
if not exist "%ROOT%_build" mkdir "%ROOT%_build"
win_flex -o "%ROOT%_build\exp23.lex.yy.c" "%ROOT%experiment-23\line_numbers.l" || exit /b 1
gcc "%ROOT%_build\exp23.lex.yy.c" -o "%ROOT%_build\exp23.exe" || exit /b 1
type "%ROOT%experiment-01\sample.c" | "%ROOT%_build\exp23.exe"
