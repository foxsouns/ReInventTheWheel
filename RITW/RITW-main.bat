@echo off
setlocal enabledelayedexpansion
setlocal enableextensions

title ReInventTheWheel
:: sorry! gonna need this later lol
set initcd=!cd!

::bypass intro if already called
if "!ckrun!"=="1" (
	goto monke
) else (
	set ckrun=1
	goto intro
)

:intro
echo A front-end to the Microsoft Command Prompt. [Version 0.1.4-alpha]
echo made by foxsouns using her time writing this instead of doing her schoolwork in march-april 2021
echo.
echo WARNIN': this thingy depends on the names being the right thing, 
echo and that theyre being ran in the same folder. else: addons wont work.
echo. 
echo the script's got "quit", lookin for the addons now. 
echo.

if exist "!initcd!\RITW-addons.bat" (
echo yup! you're good to go. run "addons" for some neat shit lol
) else (
echo sorry mate, you don't have RITW-addons.bat.
)
echo.

:: BE MONKE
:monke

:: prompt you for input, using the current directory and thingz so that it looks like normal cmd
set /p fakecmd="%cd%>"

:: bruh, custom stuff?
if "!fakecmd!"=="addons" goto ry-spec
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
)
echo.
goto monke
