@echo off
set "ROOT=%~dp0"
if not exist "%ROOT%_build" mkdir "%ROOT%_build"
win_flex -o "%ROOT%_build\exp28.lex.yy.c" "%ROOT%experiment-28\mobile_validator.l" || exit /b 1
gcc "%ROOT%_build\exp28.lex.yy.c" -o "%ROOT%_build\exp28.exe" || exit /b 1
echo 9876543210 | "%ROOT%_build\exp28.exe"
