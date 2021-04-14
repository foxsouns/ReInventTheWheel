@echo off
setlocal enabledelayedexpansion
setlocal enableextensions

title ReInventTheWheel

:: this is custom stuff that i have for some reason
if not "!ckrun!"=="1" (
goto hey
) else (
goto sup
)
:hey
echo hey! please launch me from ritw-main. imma dumb batch file and some stuff breaks without main,,,
echo this batch file is sad. press any key to advance.
pause >nul
echo.
:sup
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
if /i "!ry-query!"=="baby" goto ry-baby
if /i "!ry-query!"=="quit" goto ry-quit
echo thats not a command. (help lists them all.) runnnin it as a normal thing
echo.
!ry-query!
goto ry-spec

:ry-quit
if exist "!initcd!\RITW-main.bat" (
echo.
call "!initcd!\RITW-main.bat"
) else (
echo.
echo bup
goto ry-spec
)
goto nope

:ry-help
:: WYSIWYG
echo help - to view this message
echo bean - to get beaned
echo frick - this fricker takes ALL your memory. hhahha
echo spam - makes a file that gets filled with the letter "a"
echo baby - starts a new term with RITW-minimal.bat from
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

:ry-baby
if exist "!initcd!\RITW-minimal.bat" (
	start "!initcd!\RITW-minimal.bat"
	goto ry-spec
) else (
echo lol you dont have minimal
goto ry-spec
)

:nope
:: these "goto nope"'s are for my shitty programming lol, 
:: i dont want to have batch running off and killing the runner's ram
echo.
echo idk how you got here. i musta borked somewhere lol
echo sendin ya to monke
echo.
if exist "!initcd!\RITW-main.bat" (
	call "!initcd!\RITW-main.bat"
) else (
echo are you KIDDING ME
goto ry-spec
)
