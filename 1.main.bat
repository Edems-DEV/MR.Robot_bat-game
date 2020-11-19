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
:: music settings
echo xxxxxxxxxxxxxxxxxxxxxxxxxxxx
echo Tutorial
echo phone =  folder of this game 
echo xxxxxxxxxxxxxxxxxxxxxxxxxxxx
pause
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
::start setup
mode con: cols=78 lines=78
color 2
cls
::
echo hello %username%.
echo Go to you computer.

choice /C:yn /M "Y- Go to your computer N- Stay where you are"
if errorlevel == 2 goto oneno
if errorlevel == 1 goto oneyes

:oneno
echo So i heard you want go to your computer :).
pause
cls

:oneyes
echo " ______________       "
echo " ||            ||     "
echo " ||            ||     "
echo " ||            ||     "
echo " ||            ||     "
echo " ||____________||     "
echo " |______________|     "
echo " \\############\\     "
echo "  \\############\\    "
echo "   \      ____    \   "
echo "    \_____\___\____\  "
echo ________________________ 
::temporarily until I have a better idea
:legithAcKinG1
echo Get inside the laptop.
choice /C:BED /M "B- BruceForce E- use Exploit D- dump files"
if errorlevel == 3 goto twoDumpFiles
if errorlevel == 2 goto twoExploit
if errorlevel == 1 goto twoBruceForce

:twoExploit
    :vetsi
    set /a percent=%random% %%100 +1
    :: 90 = 10%
    if %percent% GEQ 90 (
    echo Nice, You are pretty smart. 
    echo You found exploit !!!!!!!
    echo ----------------------------------
    echo ----------------------------------
    echo ----------------------------------
    goto done
    )else (
    echo You can't figure out any exploit.
    echo ----------------------------------
    goto legithAcKinG1
    )

:twoDumpFiles
    echo You dump HARDdisk of computer.
    echo Dumped files you can find at your phone
    mkdir phone
    echo 556c74696d61746550617373776f72643132334e4f6f6e654b4e4f5768696d >> phone/data.txt
    echo Find that files and press any key
    pause
    echo Decrypt data from data.txt which you can find in your mobile.
    echo Looks like it's encrypted in Hex Code
    pause
    echo after decrypting try bruteforce attack again
    pause
    goto legithAcKinG1

:twoBruceForce
    echo PC: Enter your password
    set /p "pass=>"
    if /I "%pass%"=="UltimatePassword123NOoneKNOWhim" (
        GOTO :done
    ) ELSE (
        GOTO :fail
    )
:fail
echo invalid password
choice /C:tb /M "t= try again b= try different method"
if errorlevel == 2 goto legithAcKinG1
if errorlevel == 1 goto twoBruceForce
    
:done
echo pc: Welcome back 
echo Nice you get inside
mkdir loot
echo 01001000 01100101 01110010 01100101 00100000 01110011 01101000 01101111 01110101 01101100 01100100 00100000 01100010 01100101 00100000 01110011 01101111 01101101 01100101 00100000 01100100 01100001 01110100 01100001 00101100 00100000 01100010 01110101 01110100 00100000 01101001 01101101 00100000 01110100 01101111 01101111 00100000 01101100 01100001 01111010 01111001 00100000 01110100 01101111 00100000 01101101 01100001 01101011 01100101 00100000 01110100 01101000 01100101 01101101 00101110 00100000 00111010 00101001 >> loot/data.txt
pause
goto insidePC

:insidePC
echo now open "secret.exe"
set /p "secret=C:\Users\root>"
    if /I "%secret%"=="secret.exe" (
        GOTO :openfile
    ) ELSE (
        GOTO :pepega
    )

:pepega
echo try write secret.exe into cmd
pause
goto insidePC

:openfile
cls
call 10.Fsociety_logo.bat
echo You done all your task.
pause
echo So now you can join us.
pause
echo We will met here:  4d616465206279204544454d53


::konec
:konec
color B
cls
echo This is the end of the game
echo If you like give me star on my github
echo github: 
pause
