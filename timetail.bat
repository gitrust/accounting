@echo off
::
:: Print last clock postings
::
setlocal
powershell -command "Get-Content %LEDGER_FILE%  -Tail 1"
endlocal