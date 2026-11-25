@echo off
set "ROOT=%~dp0"
if not exist "%ROOT%_build" mkdir "%ROOT%_build"
gcc "%ROOT%experiment-02\comment_identifier.c" -o "%ROOT%_build\exp02.exe" || exit /b 1
"%ROOT%_build\exp02.exe" "%ROOT%experiment-02\sample.txt"
