@echo off
set "ROOT=%~dp0"
if not exist "%ROOT%_build" mkdir "%ROOT%_build"
win_flex -o "%ROOT%_build\exp37.lex.yy.c" "%ROOT%experiment-37\word_frequency.l" || exit /b 1
gcc "%ROOT%_build\exp37.lex.yy.c" -o "%ROOT%_build\exp37.exe" || exit /b 1
echo Compiler design is fun. Compiler labs are useful. | "%ROOT%_build\exp37.exe" Compiler
