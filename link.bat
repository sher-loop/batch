@echo off
setlocal enabledelayedexpansion

set /p link=Enter link (e.g. https://example.com): 
set /p count=How many times to open: 

for /l %%i in (1,1,!count!) do (
    start "" "!link!"
)

endlocal
