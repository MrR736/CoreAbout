@echo off
set /p url=<%CSP%\url
wget -q -O "%temp%\Settings.7z" "%url%"
