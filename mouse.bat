@echo off
setlocal enabledelayedexpansion

:: Get start time in seconds
for /f %%a in ('powershell -command "[int](Get-Date -UFormat %%s)"') do set START=%%a

:loop
:: Get current time
for /f %%a in ('powershell -command "[int](Get-Date -UFormat %%s)"') do set NOW=%%a

:: Elapsed time
set /a ELAPSED=!NOW! - !START!

:: Stop after 3600 seconds (1 hour)
if !ELAPSED! GEQ 3600 exit

:: Move mouse to random nearby spot
set /a X=!random! %% 100 + 500
set /a Y=!random! %% 100 + 300

powershell -command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(!X!,!Y!)"

:: Wait 5 seconds
timeout /nobreak /t 3 >nul

goto loop
