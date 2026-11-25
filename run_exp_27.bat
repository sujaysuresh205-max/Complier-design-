@echo off
set "ROOT=%~dp0"
if not exist "%ROOT%_build" mkdir "%ROOT%_build"
win_flex -o "%ROOT%_build\exp27.lex.yy.c" "%ROOT%experiment-27\replace_abc.l" || exit /b 1
gcc "%ROOT%_build\exp27.lex.yy.c" -o "%ROOT%_build\exp27.exe" || exit /b 1
echo abc is a substring abc. | "%ROOT%_build\exp27.exe"
