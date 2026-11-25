@echo off
set "ROOT=%~dp0"
if not exist "%ROOT%_build" mkdir "%ROOT%_build"
gcc "%ROOT%experiment-15\file_counts.c" -o "%ROOT%_build\exp15.exe" || exit /b 1
"%ROOT%_build\exp15.exe" "%ROOT%experiment-01\sample.c"
