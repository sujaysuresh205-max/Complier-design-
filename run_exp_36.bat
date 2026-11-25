@echo off
set "ROOT=%~dp0"
if not exist "%ROOT%_build" mkdir "%ROOT%_build"
win_flex -o "%ROOT%_build\exp36.lex.yy.c" "%ROOT%experiment-36\basic_calculator.l" || exit /b 1
gcc "%ROOT%_build\exp36.lex.yy.c" -o "%ROOT%_build\exp36.exe" || exit /b 1
echo 12+5 | "%ROOT%_build\exp36.exe"
