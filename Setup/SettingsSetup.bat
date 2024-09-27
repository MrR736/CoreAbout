@echo off
timeout /t 1 /nobreak > NUL
setlocal enabledelayedexpansion
set /p InstallPath=<InstallPath
set "InstallPath=!InstallPath:0 =!"
del /q %InstallPath%
xcopy /s /y ".\Settings" "%InstallPath%"
cd "%temp%"
start cmd /c rd /s /q "%temp%\Settings" & exit
exit
