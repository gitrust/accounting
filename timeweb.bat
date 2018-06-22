@echo off
::
:: Start hledger web ui with current timeclock journal
::
setlocal
set LEDGER_FILE=%HOMEDRIVE%/time.timeclock
hledger-web -f %LEDGER_FILE%
endlocal