@echo off
timeout /t 1 /nobreak > NUL
setlocal enabledelayedexpansion
set /p InstallPath=<InstallPath
set "InstallPath=!InstallPath: =!"
for /f "tokens=*" %f in ('dir /b /s %InstallPath%\*.exe') do taskkill /f /im %~nf.exe /t
for /f "tokens=*" %f in ('dir /b /s %InstallPath%\*.dll') do taskkill /f /im %~nf.dll /t
for /f "tokens=*" %f in ('dir /b /s %InstallPath%\*.bat') do taskkill /f /im %~nf.bat /t
del /q %InstallPath%
xcopy /s /y "%temp%\Settings\Settings" "%InstallPath%"
cd "%temp%"
start cmd /c rd /s /q "%temp%\Settings" & exit
exit