@echo off
setlocal enabledelayedexpansion

::intro
echo A front-end to the Microsoft Command Prompt. [Version 1.0.4]
echo made by foxsouns using her time writing this instead of doing her schoolwork in march 2021
echo cool new commands: ry-spec, quit
echo. 

::changelog
echo changelog:
echo - added a changelog 
echo - enabled delayed expansion
echo     - HELL YEAH QUOTES ARE FIXED BABEY
echo - going to attempt to split off into multiple batch files for ez readin
echo.

:: BE MONKE
:monke

:: prompt you for input, using the current directory and shit so that it looks like normal cmd
set /p fakecmd="%cd%>"

:: oh shit, custom stuff?
if "!fakecmd!"=="ry-spec" echo. & goto rynn-start
if "!fakecmd!"=="quit" goto :eof

:: run that thing we just got
echo.
!fakecmd!
echo.

:: go back i want to be MONKE
goto :monke

:rynn-start
echo welcome to hell. foxsouns 2021. enter help for some commands. 
echo batch gets pissy if you dont do them right, though. be prepared.
:rynn-spec
echo.
set /p ry-spec="rynn-special>"
echo.

:: this is a bad way of listing commands. Too Bad!
if /i "!ry-spec!"=="help" goto ry-help
if /i "!ry-spec!"=="bean" goto ry-bean
if /i "!ry-spec!"=="fuck" goto ry-fuck
if /i "!ry-spec!"=="spam" goto ry-spam
if /i "!ry-spec!"=="quit" goto ry-quit

echo thats not a command. run something better instead. try out "help".
goto rynn-spec


:ry-help
echo help - to view this message
echo bean - to get beaned
echo fuck - this fucker takes ALL your memory. hhahha
echo spam - makes a file that gets filled with a
echo quit - to go back to MONKE
goto rynn-spec

:ry-quit
goto monke

:ry-bean
echo get friccin beaned idiot!
echo.
pause
shutdown /p

goto noooo
:ry-fuck
echo.
set /p fuck-confirm="this is kinda hella bad. are you sure? enter (hell yeah) to fuck up the cd "
if /i "%fuck-confirm%"=="hell yeah" goto frick
echo good choice
goto ry-spec
:frick
goto lolf
:noooo

goto nah
:ry-spam
echo lol have fun
pause
:BRUH
echo a >> a.txt
goto BRUH
:nah

goto nope
:lolf
echo.
echo youll need to set a directory with some files in it for for that one. whatll it be? make sure to escape any special chars "^", and not quote them.
set /p yeah-variable="directory with like, tons of files in it: "
set /p auto="auto? (auto|*)"
:oop
for /l %%x in (1,1,10) do (
	for /f "tokens=* delims=" %%a in ('dir %yeah-variable% /s /b') do (
		copy %%a %%a_%%x
		)
	)
if /i "%auto%"=="auto" goto oop
set /p lol="again? (yes|*)"
if /i "%lol%"=="yes" goto oop
echo Buh-bye!
goto ry-spec
:nope
exit
