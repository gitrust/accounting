@echo off
::
:: Start hledger web ui with current timeclock journal
::
setlocal
hledger-web -f %LEDGER_FILE%
endlocal