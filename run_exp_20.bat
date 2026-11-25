@echo off
set "ROOT=%~dp0"
if not exist "%ROOT%_build" mkdir "%ROOT%_build"
win_flex -o "%ROOT%_build\exp20.lex.yy.c" "%ROOT%experiment-20\constants_macros_headers.l" || exit /b 1
gcc "%ROOT%_build\exp20.lex.yy.c" -o "%ROOT%_build\exp20.exe" || exit /b 1
"%ROOT%_build\exp20.exe" "%ROOT%experiment-01\sample.c"
