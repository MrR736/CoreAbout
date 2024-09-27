@echo off
timeout /t 1 /nobreak > NUL
setlocal enabledelayedexpansion
set /p InstallPath=<InstallPath
set "InstallPath=!InstallPath: =!"
for /F "tokens=*" %i in ('dir /b "%InstallPath%\*.exe"') do taskkill /F /IM "%i"
del /q %InstallPath%
xcopy /s /y ".\Settings" "%InstallPath%"
cd "%temp%"
start cmd /c rd /s /q "%temp%\Settings" & exit
exit
