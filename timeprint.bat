@echo off
::
:: Alias for a hledger register command
::
setlocal
hledger r -b today
endlocal