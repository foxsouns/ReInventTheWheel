@echo off
setlocal enabledelayedexpansion

::intro
echo A front-end to the Microsoft Command Prompt. [Version 0.1.1-alpha]
echo made by foxsouns using her time writing this instead of doing her schoolwork in march 2021
echo cool new commands: ry-spec, quit
echo. 

:: changelog:
:: - added a changelog 
:: - enabled delayed expansion
::     - HELL YEAH QUOTES ARE FIXED BABEY
:: - going to attempt to split off into multiple batch files for ez readin

:: BE MONKE
:monke

:: prompt you for input, using the current directory and thingz so that it looks like normal cmd
set /p fakecmd="%cd%>"

:: bruh, custom stuff?
if "!fakecmd!"=="ry-spec" echo. & goto rynn-start
if "!fakecmd!"=="quit" goto :eof

:: run that thing we just got
echo.
!fakecmd!
echo.

:: go back i want to be MONKE
goto :monke

:: this is custom stuff that i have for some reason
:rynn-start
echo sup. enter help for some commands.
:rynn-spec
echo.
set /p ry-spec="special-cmd>"
echo.

:: this is a bad way of listing commands. wish i knew how to do it proper 
if /i "!ry-spec!"=="help" goto ry-help
if /i "!ry-spec!"=="bean" goto ry-bean
if /i "!ry-spec!"=="frick" goto ry-frick
if /i "!ry-spec!"=="spam" goto ry-spam
if /i "!ry-spec!"=="quit" goto ry-quit

echo thats not a command. run something that exists instead. try out "help".
goto rynn-spec


:ry-help
:: WYSIWYG
echo help - to view this message
echo bean - to get beaned
echo frick - this fricker takes ALL your memory. hhahha
echo spam - makes a file that gets filled with the letter "a"
echo quit - to go back to MONKE
goto rynn-spec

:ry-quit
goto monke

goto nope
:ry-bean
echo get friccin beaned idiot!
echo.
pause
:: big thanks to UND lmao
shutdown /p

goto nope
:ry-frick
:: THIS IS NOT FINISHED. Its a check for something that doesnt exist lol
echo.
set /p frick-confirm="this is kinda hella bad. are you sure? enter (hell yeah) to bork the cd: "
if /i "%frick-confirm%"=="hell yeah" goto frick
echo good choice
goto ry-spec
:frick
goto lolf

goto nope
:ry-spam
echo lol have fun, press enter to move on
pause >null
echo a >> a.txt
:BRUH
type a.txt >> a.txt
goto BRUH

goto nope
:lolf
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

:frick
:: placeholder because i dont have it done lolololol

:nope
:: these "goto nope"'s are for my shitty programming lol, i dont want to have batch running off and killing the runner's ram
echo idk how you got here. i musta borked somewhere lol
echo sending you back to monke.
echo.
goto monke
