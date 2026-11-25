@echo off
set "ROOT=%~dp0"
if not exist "%ROOT%_build" mkdir "%ROOT%_build"
win_flex -o "%ROOT%_build\exp32.lex.yy.c" "%ROOT%experiment-32\positive_negative.l" || exit /b 1
gcc "%ROOT%_build\exp32.lex.yy.c" -o "%ROOT%_build\exp32.exe" || exit /b 1
echo +25 -8 42 | "%ROOT%_build\exp32.exe"
