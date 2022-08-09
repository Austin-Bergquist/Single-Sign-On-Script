# Single-Sign-On-Script
Script template to expedite signing in to accounts on a browser.

Code Followed by description:
---------------------------------------------------------------------------------------
@if (@CodeSection == @Batch) @then              #

@echo off                                       #              

set "username=****"                             #Set Variable "username" to ****. Change value of **** to preferred value.

set "password=****"                             #Set Variable "password" to ****. Change value of **** to preferred value.

start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "-new-window http://www.google.com"           #Start Chrome and navigate to www.google.com

timeout /t 5 /nobreak >nul                                                                                    #Wait 5 seconds to load page

CScript //nologo //E:JScript "%~F0"  %username%{enter}"                                                       #Inputs text value of "username", enter button.

timeout 2                                                                                                     #Wait 2 seconds

CScript //nologo //E:JScript "%~F0" %password%{enter}"                                                        #Inputs text value of "password", enter button.

timeout 2                                                                                                     #Wait 2 seconds

CScript //nologo //E:JScript "%~F0" {enter}"                                                                  #Enter button.

goto :E0F                                                                                                     #

@end                                                                                                          #

WScript.CreateObject("WScript.Shell").SendKeys(WScript.Arguments(0));                                         #
