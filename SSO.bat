@if (@CodeSection == @Batch) @then

@echo off

set "username=****"

set "password=****"

start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" -new-window http://www.google.com"

timeout /t 5 /nobreak >nul

CScript //nologo //E:JScript "%~F0"  %username%{enter}  %password%{enter}"

timeout 2

CScript //nologo //E:JScript "%~F0" %password%{enter}"

timeout 2

CScript //nologo //E:JScript "%~F0" {enter}"

goto :E0F

@end

WScript.CreateObject("WScript.Shell").SendKeys(WScript.Arguments(0));