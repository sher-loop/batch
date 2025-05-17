@echo off
set /p link=link:
set /p time=H M T:

set times=%time%

for /l %%i in (1,1,%times%) do (
    start "" %link%
)

