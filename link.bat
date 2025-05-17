@echo off
set /p link=link:
set /p times=H M T:


for /l %%i in (1,1,%times%) do (
    start "" %link%
)

