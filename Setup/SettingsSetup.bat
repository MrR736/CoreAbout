@echo off
cd /d %~dp0
timeout /t 3 /nobreak > NUL
setlocal enabledelayedexpansion
set /p InstallPath=<InstallPath
set "InstallPath=!InstallPath:0 =!"
xcopy /s /y ".\Settings" "%InstallPath%"
cd "%temp%"
start cmd /c rd /s /q "%temp%\Settings" & exit
exit
