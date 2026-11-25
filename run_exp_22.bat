@echo off
set "ROOT=%~dp0"
if not exist "%ROOT%_build" mkdir "%ROOT%_build"
win_flex -o "%ROOT%_build\exp22.lex.yy.c" "%ROOT%experiment-22\html_tags.l" || exit /b 1
gcc "%ROOT%_build\exp22.lex.yy.c" -o "%ROOT%_build\exp22.exe" || exit /b 1
echo ^<html^>Hello^</html^>| "%ROOT%_build\exp22.exe"
