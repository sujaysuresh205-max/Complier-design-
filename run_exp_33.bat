@echo off
set "ROOT=%~dp0"
if not exist "%ROOT%_build" mkdir "%ROOT%_build"
win_flex -o "%ROOT%_build\exp33.lex.yy.c" "%ROOT%experiment-33\url_validator.l" || exit /b 1
gcc "%ROOT%_build\exp33.lex.yy.c" -o "%ROOT%_build\exp33.exe" || exit /b 1
echo https://example.com/path | "%ROOT%_build\exp33.exe"
