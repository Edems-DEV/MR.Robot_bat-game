@echo off
::
echo Chapter 2
echo Ransomware
pause
cls
::
goto start
:filesdump
mkdir PC
mkdir PC\data
    ::make some easter egg here
echo ddfgsdgsdgdsfgsdfgertewdftgewiotewtiueiwourtio >> PC/data/data1.rip
echo ddfgsdgsdgdsfgsdfgertewdftgewiotewtiueiwourtio >> PC/data/data2.rip
echo ddfgsdgsdgdsfgsdfgertewdftgewiotewtiueiwourtio >> PC/data/data3.rip
goto filesdumpback
::
:start
echo You came home.
pause
echo ________________________
echo When you turn on your computer, you found that it was completely encrypted.
echo " ______________       "
echo " ||            ||     "
echo " ||            ||     "
echo " ||    ERROR   ||     "
echo " ||            ||     "
echo " ||____________||     "
echo " |______________|     "
echo " \\############\\     "
echo "  \\############\\    "
echo "   \      ____    \   "
echo "    \_____\___\____\  "
echo ________________________ 
pause
cls
color C
echo On screen was written "If you want your data back, send a $ 300 worth of bitcoin to this address within hour. If you wont send within hour price will increase double time.
echo If we don't get ours money till 24hours all your data will be destroyed.
pause 

color B
cls
:legithAcKinG2
echo MISION: Get your clear data back before they gets deleted.
choice /C:BEDS /M "B- BruceForce | E- use Exploit | D- dump files | S- search on internet "
if errorlevel == 4 goto threeSearch
if errorlevel == 3 goto threeDumpFiles
if errorlevel == 2 goto threeExploit
if errorlevel == 1 goto threeBruceForce

:threeExploit
    ::cls
    :vetsi
    set /a percent=%random% %%100 +1
    :: 99 = 1%
    if %percent% GTR 99 (
    echo Wtf this is impossible.  
    echo You found exploit !!!!!!!
    echo ----------------------------------
    echo ----------------------------------
    echo ----------------------------------
    goto done
    )else (
    echo You can't figure out any exploit.
    echo ----------------------------------
    goto legithAcKinG2
    )

:: To DO
:threeDumpFiles
    cls
    echo You dump HARDdisk of computer.
    echo Dumped files you can find at your phone
    ::DEL UNDER
    goto filesdump

    :filesdumpback
    ::echo You dump files successfully.
    pause
    cls
    goto legithAcKinG2

:threeBruceForce
    cls
    echo PC: Enter your password
    set /p "pass=>"
    if /I "%pass%"=="49207265616c6c7920776f6e64657220696620736f6d656f6e6520636f6e76657274207468697320746f207265616c20746578742e" (
        GOTO :finaldecrypt
    ) ELSE (
        GOTO :fail
    )
:fail
echo invalid password
choice /C:tb /M "t= try again b= try different method"
if errorlevel == 2 goto legithAcKinG2
if errorlevel == 1 goto threeBruceForce

:threeSearch
choice /C:sn /M "s- search for decrypt key n- do nothing a throw your computer into toilet "
if errorlevel == 2 goto failkonec
if errorlevel == 1 goto Search

:Search
    mkdir Flashdrive
    echo Need to run the program. (decrypt.exe)>> Flashdrive/decryptkey.txt
    ::again2
    echo Nice you found a decrypt key, which you downloaded on your flash drive and put in the computer.
    pause
    echo Now run that program
    set /p "programrun=C:\Users\root>"
    if /I "%programrun%"=="decrypt.exe" (
        echo  Decrypt key was successfully found for this build.
        echo You can found him in your flash drive
        mkdir flashdrive
        echo 49207265616c6c7920776f6e64657220696620736f6d656f6e6520636f6e76657274207468697320746f207265616c20746578742e >> flashdrive/key.txt
    ) ELSE (
        GOTO :legithAcKinG2
    )
    cls
    echo Now you finally found key for decryption your your files.
    echo So use him Here Now.
    echo (key.txt)
    echo ----------------------------------------------------------------
    echo PC: Enter your password
    set /p "encryptpass=>"
    if /I "%encryptpass%"=="49207265616c6c7920776f6e64657220696620736f6d656f6e6520636f6e76657274207468697320746f207265616c20746578742e" (
        GOTO :finaldecrypt
    ) ELSE (
        GOTO :fail
    )


:finaldecrypt
echo Files were successfully decrypted decrypted.
cd PC/data
ren data*.rip data*.txt
cd ..
cd ..
::here put loading

::endofchapter2
echo Missin complate
::music
    ::TO DO - kill other music
set "file2=mision_complated.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file2%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs