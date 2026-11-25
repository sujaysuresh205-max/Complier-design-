@echo off
setlocal
set "ROOT=%~dp0"
if not exist "%ROOT%_build" mkdir "%ROOT%_build"
set "REPORT=%ROOT%RUN_REPORT.txt"
echo Compiler Design Lab run report> "%REPORT%"
echo Started: %date% %time%>> "%REPORT%"
echo.>> "%REPORT%"
for %%E in (01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40) do (
    echo Running Experiment %%E...
    call "%ROOT%run_exp_%%E.bat" > "%ROOT%_build\exp%%E.run.log" 2>&1
    if errorlevel 1 (
        echo EXPERIMENT %%E: FAIL>> "%REPORT%"
    ) else (
        echo EXPERIMENT %%E: PASS>> "%REPORT%"
    )
)
echo.>> "%REPORT%"
echo Finished: %date% %time%>> "%REPORT%"
echo Report: "%REPORT%"
endlocal
