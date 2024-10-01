@echo off
cd /d %~dp0
timeout /t 3 /nobreak > NUL
setlocal enabledelayedexpansion
set /p InstallPath=<InstallPath
set "InstallPath=!InstallPath:\/ =!"
del /q ".\Settings\PathData"
del /q ".\Settings\PathColorData"
del /q ".\Settings\Gui\PathData"
del /q ".\Settings\Gui\data"
del /q ".\Settings\Gui\ColorData"
xcopy /s /y ".\Settings" "%InstallPath%"
cd "%temp%"
start cmd /c rd /s /q "%temp%\Settings" & exit
exit
