@echo off
set "ROOT=%~dp0"
if not exist "%ROOT%_build" mkdir "%ROOT%_build"
gcc "%ROOT%experiment-03\whitespace_comment_lexer.c" -o "%ROOT%_build\exp03.exe" || exit /b 1
"%ROOT%_build\exp03.exe" "%ROOT%experiment-03\sample.c"
