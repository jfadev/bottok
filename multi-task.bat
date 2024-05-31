@echo off

REM Define initial variables
set counter=1
set "filename=%~1"
if not defined filename set "filename=tasks.csv"

REM Read the CSV file line by line and assign the values to variables
for /F "tokens=1,2,3,4 delims=," %%a in (%filename%) do (
  REM Execute the command with the corresponding variables
  start cmd /c node bottok.js ^
    -d ^
    -o ^
    -q "%%d" ^
    -c cookies!counter!.json ^
    -t "%%a" ^
    -l "%%c" ^
    -x "%%b" ^
    -s proxies.txt
  REM Increment the counter
  set /A counter+=1
  REM Wait for 90 seconds before executing the next command
  timeout /t 90 /nobreak >nul
)
