::SETUP
@echo off
chcp 65001
@title MR.ROBOT_game
color B
cls

::Welcome
echo XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
echo XXXXXXXXXXX Welcome to MR.ROBOT lidl edition - bat file game   XXXXXXXXXXXXXXX
echo XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
pause
::warning
echo     !!! warning !!!!
echo this "game" contains
echo 1. bad ennglish
echo 2. borring story and gameplay
echo 3. and gameplay is 3 minutes long

:: Tutorial
echo xxxxxxxxxxxxxxxxxxxxxxxxxxxx
echo Tutorial
echo phone =  folder of this game 
echo xxxxxxxxxxxxxxxxxxxxxxxxxxxx
pause
:: music settings
choice /C:yn /M "Du you want music?"
if errorlevel == 2 goto audioNO
if errorlevel == 1 goto audioYES

:audioYES
echo audio ON
echo To turn of music hardway use task manager and find "Micrsoft Windows Based Script Host"

set "file=soudtrack.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs

goto areyouready
:audioNO
echo audio vypnute
goto areyouready

:areyouready
choice /C:yn /M "Are you ready to start? y- yes || n- no"
if errorlevel == 2 goto nejsem
if errorlevel == 1 goto start

:nejsem
echo You're ready, but you just don't know it yet. :)
pause

:start
::chapter 1
call 2-chapter1.bat
::chapter 2
call 3-chapter2.bat

:failkonec
echo Why you always want to destroy this game?
pause
echo So you lost the game. So you owe me a star on github. :D
::konec
:konec
color B
cls
echo This is the end of the game
echo If you like give me star on my github
echo github: github.com/Edems-DEV/MR.Robot_bat-game
pause
