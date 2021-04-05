@echo off 

:: hell yeah, fakerz
echo A front-end to the Microsoft Command Prompt. [Version 0.0.1-alpha]
:: this is old and broken and doesnt have anything of use in it. but here lol
echo made by foxsouns using her time writing this instead of doing her schoolwork in march 2021
echo (ps: try ry-spec)
echo.
goto monke


:: BE MONKE
:monke

:: prompt you for input, using the current directory and shit so that it looks like normal cmd
set /p fakecmd="%cd%>"

:: oh shit, custom stuff?
if "%fakecmd%"=="ry-spec" echo. & goto :rynn-start

:: run that thing we just got
echo.
%fakecmd%
echo.

:: go back i want to be MONKE
goto monke

:rynn-start
echo welcome to hell. foxsouns 2021. enter help for some commands. 
echo batch gets pissy if you dont do them right, though. be prepared.
:rynn-spec
echo.
set /p ry-spec="rynn-special>"
echo.

:: this is a bad way of listing commands. Too Bad!
if /i "%ry-spec%"=="help" goto ry-help
if /i "%ry-spec%"=="bean" goto ry-bean
if /i "%ry-spec%"=="quit" goto ry-quit
echo thats not a command. try something that exists. maybe help?
goto rynn-spec


:ry-help
echo help - to view this message
echo bean - to get beaned
echo quit - to go back to MONKE
goto rynn-spec

:ry-quit
goto monke

:ry-bean
echo get friccin beaned idiot!
echo.
pause
exit