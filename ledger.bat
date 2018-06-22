@echo off
::
:: Alias for hledger command
::
setlocal
set LEDGER_FILE=%HOMEDRIVE%/time.timeclock
%USERPROFILE%\Portable\hledger\hledger %*
endlocal