@echo off
setlocal enabledelayedexpansion
title Disk and USB Speed Benchmark
color 0A

:: Administrator privileges check
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo.
    echo [!] Error: Please right-click and run this script as Administrator.
    echo.
    pause
    exit /b
)

:MENU
cls
echo ======================================================
echo             DISK / USB SPEED BENCHMARK
echo ======================================================
echo.
echo Available Drives:
wmic logicaldisk get caption,description,volumename
echo.
set /p drive="Enter the drive letter to test (e.g. C, D, E): "

:: Remove colon or slashes if entered by mistake
set drive=%drive::=%
set drive=%drive:/=%
set drive=%drive:\=%

if not exist %drive%:\ (
    echo.
    echo [X] Error: Drive "%drive%:" not found. Please try again.
    timeout /t 3 >nul
    goto MENU
)

cls
echo ======================================================
echo  Testing Drive: %drive%:
echo  Running benchmark, please wait a moment...
echo ======================================================
echo.

:: Run Windows SAT Disk Benchmark
winsat disk -drive %drive%

echo.
echo ======================================================
echo                   TEST COMPLETED
echo ======================================================
echo.
set /p repeat="Would you like to test another drive? (Y/N): "
if /i "%repeat%"=="Y" goto MENU

echo.
echo Exiting benchmark...
timeout /t 2 >nul
exit