@echo off
set "ROOT=%~dp0"
if not exist "%ROOT%_build" mkdir "%ROOT%_build"
win_flex -o "%ROOT%_build\exp35.lex.yy.c" "%ROOT%experiment-35\digit_validator.l" || exit /b 1
gcc "%ROOT%_build\exp35.lex.yy.c" -o "%ROOT%_build\exp35.exe" || exit /b 1
echo 7 | "%ROOT%_build\exp35.exe"
