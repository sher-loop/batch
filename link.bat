@echo off
setlocal enabledelayedexpansion

set /p link=link: 
set /p count=H M T: 

for /l %%i in (1,1,!count!) do (
    start "" "!link!"
)
endlocal
exit
