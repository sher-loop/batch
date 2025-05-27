@echo off
setlocal enabledelayedexpansion
set /p link=Enter base Google Sheets link (without range=):
set /p count=How many tabs to open (H M T):
::set /p clm=Column Num:
set "cols=F G H I J K L M N O P Q R S T"
set i=0
for %%c in (%cols%) do (
set /a i+=1
if !i! LEQ %count% (
start "" "!link!&range=%%c5"
timeout /t 1 >nul
)
)
::xxxxxx
set i=0
for %%c in (%cols%) do (
set /a i+=1
if !i! LEQ %count% (
start "" "!link!&range=%%c6"
timeout /t 1 >nul
)
)
::xxxxxx
set i=0
for %%c in (%cols%) do (
set /a i+=1
if !i! LEQ %count% (
start "" "!link!&range=%%c7"
timeout /t 1 >nul
)
)
set i=0
for %%c in (%cols%) do (
set /a i+=1
if !i! LEQ %count% (
start "" "!link!&range=%%c8"
timeout /t 1 >nul
)
)
set i=0
for %%c in (%cols%) do (
set /a i+=1
if !i! LEQ %count% (
start "" "!link!&range=%%c9"
timeout /t 1 >nul
)
)
exit