@echo off
:menu
cls
echo ============================
echo   vankam da mappla......!
echo ============================
echo 1. Open Winmonitor
echo 2. Close Winmonitor
echo 3. Exit
echo ============================
set /p choice="Enter your choice : "

if "%choice%"=="1" goto Winmonitorop
if "%choice%"=="2" goto Winmonitorcls
if "%choice%"=="3" exit
echo Invalid choice! Try again.
pause
goto menu

:Winmonitorop
start "" "\\192.168.13.248\k\USHR_Groups\winmonitor-common.exe" %1
echo Application opened successfully.
pause
goto menu

:Winmonitorcls
taskkill /f /im winmonitor-common.exe
echo Application closed successfully.
pause
goto menu
