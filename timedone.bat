@echo off
::
:: Alias for hledger for a clock-out (timeclock) posting
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
set LEDGER_FILE=%USERPROFILE%/time.timeclock


echo o %mydate%>> %LEDGER_FILE%

endlocal