@echo off
setlocal enabledelayedexpansion

if "!ckrun!"=="1" goto monke
::intro
echo A front-end to the Microsoft Command Prompt. [Version 0.1.1-alpha]
echo made by foxsouns using her time writing this instead of doing her schoolwork in march 2021
echo. 

:: changelog:
:: - added a changelog 
:: - enabled delayed expansion
::     - HELL YEAH QUOTES ARE FIXED BABEY
:: - going to attempt to split off into multiple batch files for ez readin


:: sorry! gonna need this lol
set initcd=!cd!

:: BE MONKE
:monke

:: prompt you for input, using the current directory and thingz so that it looks like normal cmd
set /p fakecmd="%cd%>"

:: bruh, custom stuff?
if "!fakecmd!"=="ry-spec" goto ry-spec
if "!fakecmd!"=="quit" goto :eof

:: run that thing we just got
echo.
!fakecmd!
echo.

:: go back i want to be MONKE
goto monke

:ry-spec
if exist "!initcd!\RITW-addons.bat" (
echo.
call "!initcd!\RITW-addons.bat"
) else (
echo.
echo You don't have RITW-addons.bat
echo.
goto monke
)


