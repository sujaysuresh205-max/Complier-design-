@echo off
set "ROOT=%~dp0"
if not exist "%ROOT%_build" mkdir "%ROOT%_build"
win_flex -o "%ROOT%_build\exp34.lex.yy.c" "%ROOT%experiment-34\dob_validator.l" || exit /b 1
gcc "%ROOT%_build\exp34.lex.yy.c" -o "%ROOT%_build\exp34.exe" || exit /b 1
echo 26/10/2026 | "%ROOT%_build\exp34.exe"
