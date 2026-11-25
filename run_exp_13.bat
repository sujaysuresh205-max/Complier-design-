@echo off
set "ROOT=%~dp0"
if not exist "%ROOT%_build" mkdir "%ROOT%_build"
gcc "%ROOT%experiment-13\top_down_parser.c" -o "%ROOT%_build\exp13.exe" || exit /b 1
"%ROOT%_build\exp13.exe" aabb
