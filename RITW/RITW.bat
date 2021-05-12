@echo off
setlocal enabledelayedexpansion enableextensions

title ReInventTheWheel

::bypass intro if already called
if "!ckrun!"=="1" (
    goto monke
) else (
    set ckrun=1
    goto intro
)

:intro
echo A front-end to the Microsoft Command Prompt. [Version 0.1.5-alpha]
echo made by foxsouns using her time writing this instead of doing her schoolwork in march-may 2021
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

:sup
echo sup. enter help for some commands.
:ry-spec
echo.
set /p ry-query="special-cmd>"
echo.

:: this is a bad way of listing commands. wish i knew how to do it proper 
if /i "!ry-query!"=="help" goto ry-help
if /i "!ry-query!"=="su" goto ry-su
if /i "!ry-query!"=="bean" goto ry-bean
if /i "!ry-query!"=="frick" goto ry-frick
if /i "!ry-query!"=="spam" goto ry-spam
if /i "!ry-query!"=="quit" goto ry-quit
echo thats not a command. (help lists them all.) runnnin it as a normal thing
echo.
!ry-query!
goto ry-spec

:ry-quit
goto monke

:ry-help
:: WYSIWYG
echo help - to view this message
echo sudo - run that command in an admin window
echo bean - to get beaned
echo frick - this fricker takes ALL your memory. hhahha
echo spam - makes a file that gets filled with the letter "a"
echo quit - to go back to MONKE
goto ry-spec

:ry-su
runas /user:!computername!/administrator cmd
goto ry-spec

:ry-bean
echo get friccin beaned idiot!
echo.
pause
exit

goto nope
:ry-frick
:: modern problems hell yeah im fuckin BLIND
echo.
set /p frick-confirm="this is kinda hella bad. are you sure? enter (hell yeah) to bork the cd: "
if /i "%frick-confirm%"=="hell yeah" goto frick
echo good choice
goto ry-spec
:frick
echo.
echo youll need to set a directory with some files in it for for that one. whatll it be?
set /p yeah-variable="directory with like, tons of files in it: "
set /p auto="auto? (auto|*)"
:oop
for /l %%x in (1,1,10) do (
    for /f "tokens=* delims=" %%a in ('dir !yeah-variable! /s /b') do (
        copy %%a %%a_%%x
    )
)
if /i "!auto!"=="auto" goto oop
set /p lol="again? (yes|*)"
if /i "!lol!"=="yes" goto oop
echo Buh-bye!
goto ry-spec

goto nope
:ry-spam
echo lol have fun, press a key
pause >nul
echo a >> a
:BRUH
type a >> a
goto BRUH

:nope
:: these "goto nope"'s are for my shitty programming lol, 
:: i dont want to have batch running off and killing the runner's ram
echo.
echo idk how you got here. i musta borked somewhere lol
echo sendin ya to monke
echo.
goto monke

:: this is an if example so that i can make if's without a duck search
:: i have no idea if this works but whatever the point is made
::
::if x=1 (
::    echo you win
::    goto youwin
::) else (
::    if exist "file.bat" (
::        echo you win
::        goto youwin
::    ) else (
::        echo you dont win
::        goto lose
::    )
::)
