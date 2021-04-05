@echo off
setlocal enabledelayedexpansion
setlocal enableextensions

:: this is custom stuff that i have for some reason
set ckrun=1
echo sup. enter help for some commands.
:ry-spec
echo.
set /p ry-query="special-cmd>"
echo.

:: this is a bad way of listing commands. wish i knew how to do it proper 
if /i "!ry-query!"=="help" goto ry-help
if /i "!ry-query!"=="bean" goto ry-bean
if /i "!ry-query!"=="frick" goto ry-frick
if /i "!ry-query!"=="spam" goto ry-spam
if /i "!ry-query!"=="quit" call "!initcd!\RITW.bat"
set /p askey="thats not a command. help is the list. enter y to run it as a normal thing: "
echo.
if /i "!askey!"=="y" !ry-query!
goto ry-spec

:ry-help
:: WYSIWYG
echo help - to view this message
echo bean - to get beaned
echo frick - this fricker takes ALL your memory. hhahha
echo spam - makes a file that gets filled with the letter "a"
echo quit - to go back to MONKE
goto ry-spec

goto nope
:ry-bean
echo get friccin beaned idiot!
echo.
pause
:: big thanks to UND lmao
shutdown /p

goto nope
:ry-frick
:: modern problems hell yeah im fuckin BLIND
echo.
set /p frick-confirm="this is kinda hella bad. are you sure? enter (hell yeah) to bork the cd: "
if /i "%frick-confirm%"=="hell yeah" goto frick
echo good choice
goto ry-spec
:frick
goto lolf

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

goto nope
:ry-spam
echo lol have fun, press a key
pause >nul
echo a >> a.txt
:BRUH
type a.txt >> a.txt
goto BRUH

:nope
:: these "goto nope"'s are for my shitty programming lol, 
:: i dont want to have batch running off and killing the runner's ram
echo.
echo idk how you got here. i musta borked somewhere lol
echo sendin ya to monke
call "!initcd!\RITW.bat"