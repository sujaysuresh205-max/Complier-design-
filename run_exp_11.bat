@echo off
set "ROOT=%~dp0"
if not exist "%ROOT%_build" mkdir "%ROOT%_build"
gcc "%ROOT%experiment-11\symbol_table.c" -o "%ROOT%_build\exp11.exe" || exit /b 1
(
echo 1
echo x int
echo 2
echo x
echo 4
echo 5
) | "%ROOT%_build\exp11.exe"
