@echo off
set "ROOT=%~dp0"
if not exist "%ROOT%_build" mkdir "%ROOT%_build"
win_flex -o "%ROOT%_build\exp31.lex.yy.c" "%ROOT%experiment-31\keywords_identifiers.l" || exit /b 1
gcc "%ROOT%_build\exp31.lex.yy.c" -o "%ROOT%_build\exp31.exe" || exit /b 1
echo int total = value; | "%ROOT%_build\exp31.exe"
