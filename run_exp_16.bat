@echo off
set "ROOT=%~dp0"
if not exist "%ROOT%_build" mkdir "%ROOT%_build"
gcc "%ROOT%experiment-16\backend.c" -o "%ROOT%_build\exp16.exe" || exit /b 1
(
echo t1=a+b
echo t2=t1*c
echo END
) | "%ROOT%_build\exp16.exe"
