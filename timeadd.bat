@echo off
::
:: Alias command for a hledger clock-in (timeclock) posting
:: 

setlocal
set dd=%date:~0,2%
set mon=%date:~3,2%
set yyyy=%date:~6,4%
set hh=%time:~0,2%
if "%hh:~0,1%"==" " set hh=0%hh:~1,1%
set min=%time:~3,2%
set ss = %time:~6,2%
set mydate=%yyyy%/%mon%/%dd% %hh%:%min%
set LEDGER_FILE=%HOMEDRIVE%/time.timeclock

IF "%1"=="" GOTO Continue
for /f "tokens=1,* delims= " %%a in ("%*") do set ALL_BUT_FIRST=%%b

:: end last task if there is a running task
tail -1 %LEDGER_FILE% | grep -e "^i" >NUL
if "%ERRORLEVEL%"=="0" echo o %mydate%>> %LEDGER_FILE%

:: add start of new task
echo i %mydate% %1  %ALL_BUT_FIRST%>> %LEDGER_FILE%

:Continue
endlocal