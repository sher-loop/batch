@echo off
setlocal enabledelayedexpansion

set /p link=Enter base Google Sheets link (without range=):
set /p count=How many columns to open (1-15):

set "cols=F G H I J K L M N O P Q R S T"
set "rows=4 5 6 7 8 9 10"

for %%r in (%rows%) do (
    set i=0
    for %%c in (%cols%) do (
        set /a i+=1
        if !i! LEQ %count% (
            start "" "!link!&range=%%c%%r"
            timeout /t 1 >nul
        )
    )
)
exit
