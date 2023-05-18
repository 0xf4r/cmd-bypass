@echo off
:main
set /p comm_cmd=Enter a command (or type "exit" to quit): 
if /I "%comm_cmd%"=="exit" goto :eof
if not "%comm_cmd%"=="" (
    %comm_cmd% || (
        echo Command failed: %comm_cmd%
        echo.
    )
)
goto :main
