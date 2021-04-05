@echo off
setlocal enabledelayedexpansion
setlocal enableextensions

::bypass intro if called from addons
if "!ckrun!"=="1" goto monke

::intro
echo A front-end to the Microsoft Command Prompt. [Version 0.1.3-alpha]
echo made by foxsouns using her time writing this instead of doing her schoolwork in march-april 2021
echo.
echo WARNIN': this thingy depends on the names being the right thing, 
echo and that theyre being ran in the same folder. else: addons wont work.
echo. 
echo. youve got "quit", and if its workin, you have access to ry-spec. have fun!
:: sorry! gonna need this later lol
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
echo You don't have RITW-addons.bat.
echo.
goto monke
)
