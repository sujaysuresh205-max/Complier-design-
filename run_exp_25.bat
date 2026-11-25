@echo off
set "ROOT=%~dp0"
if not exist "%ROOT%_build" mkdir "%ROOT%_build"
win_flex -o "%ROOT%_build\exp25.lex.yy.c" "%ROOT%experiment-25\capital_words.l" || exit /b 1
gcc "%ROOT%_build\exp25.lex.yy.c" -o "%ROOT%_build\exp25.exe" || exit /b 1
echo Compiler DESIGN LAB | "%ROOT%_build\exp25.exe"
