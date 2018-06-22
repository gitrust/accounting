@echo off
::
:: Print last clock postings
::
setlocal
set LEDGER_FILE=%HOMEDRIVE%/time.timeclock
tail %LEDGER_FILE%
endlocal