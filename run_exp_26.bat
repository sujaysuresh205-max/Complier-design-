@echo off
set "ROOT=%~dp0"
if not exist "%ROOT%_build" mkdir "%ROOT%_build"
win_flex -o "%ROOT%_build\exp26.lex.yy.c" "%ROOT%experiment-26\email_validator.l" || exit /b 1
gcc "%ROOT%_build\exp26.lex.yy.c" -o "%ROOT%_build\exp26.exe" || exit /b 1
echo student@example.com | "%ROOT%_build\exp26.exe"
