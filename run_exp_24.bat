@echo off
set "ROOT=%~dp0"
if not exist "%ROOT%_build" mkdir "%ROOT%_build"
win_flex -o "%ROOT%_build\exp24.lex.yy.c" "%ROOT%experiment-24\remove_comments.l" || exit /b 1
gcc "%ROOT%_build\exp24.lex.yy.c" -o "%ROOT%_build\exp24.exe" || exit /b 1
"%ROOT%_build\exp24.exe" "%ROOT%experiment-01\sample.c" "%ROOT%_build\exp24.output.c"
