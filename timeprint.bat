@echo off
::
:: Alias for a hledger register command
::
setlocal
set LEDGER_FILE=%HOMEDRIVE%/time.timeclock
%USERPROFILE%\Portable\hledger\hledger r -b today
endlocal