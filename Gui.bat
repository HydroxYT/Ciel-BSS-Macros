@echo off
color 3
:MCRKILL
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% TASKKILL /F /IM MacroRecorder.exe && goto MCRKILL
:configreseted
chcp 65001 >nul
setlocal EnableExtensions
setlocal enabledelayedexpansion
set count=0
for /f "tokens=*" %%x in (Settings.txt) do (
    set /a count+=1
    set var[!count!]=%%x
)
ECHO %var[16]% | FIND /I "false" && ( goto UPDATINGSkip  )
title UPDATING...
echo.
echo.
Echo                            ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
Echo                            ░░░░░░░░░░░░░░░░░░░░░░██░░░░░░░░░████░░░░░░░░██▒▒░░░░░░░░
Echo                            ░░░░░░░░░███████░░░░░░██░░░███████████▒░░░░░███▒▒░░░░░░░░
Echo                            ░░░░░░░████████▒░░░░░▒▒░░░░██████▒▒▒▒▒▒░░░░████▒▒░░░░░░░░
Echo                            ░░░░░░████▒▒▒▒▒▒░░░░███▒▒░░███▒▒▒▒░░░░░░░░░███▒▒▒░░░░░░░░
echo                            ░░░░░████▒▒▒▒░░░░░░░████▒░░███▒░░░░░░░░░░░░███▒▒░░░░░░░░░
echo                            ░░░░░███▒▒▒░░░░░░░░░███▒▒░░███▒░░░░███░░░░███▒▒▒░░░░░░░░░
echo                            ░░░░████▒▒░░░░░░░░░████▒░░████████████▒░░░███▒▒░░░░░░░░░░
echo                            ░░░░███▒▒░░░░░░░░░░████▒░░██████████▒▒▒░░███▒▒░░░░░░░░░░░  
echo                            ░░░░████▒▒░░░░░░░░░████▒░░███▒▒▒▒▒▒▒▒░░░░██▒▒▒░░░░░░░░░░░
echo                            ░░░░░███▒▒░░░░▒▒▒░░███▒▒░░███▒░░░░░░░░░░███▒▒░░░░░░░██░░░
echo                            ░░░░░████▒▒▒▒▒▒██░░███▒▒░████▒▒▒▒▒░███░░███▒▒░░░░░░██░░░░
Echo                            ░░░░░░█████▒█████░████▒░░█████████████░░█████████████░░░░
Echo                            ░░░░░░░░████████░░████▒░░█████████░░░░░░░█████████░░░░░░░
echo                            ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
echo.
echo.
echo                           Please wait until the console checks/updates the macros...
echo                                      This will only take few seconds.
cd %CD%\Macros
curl -s -o Antpass.mcr https://raw.githubusercontent.com/HydroxYT/Ciel-BSS-Macros/main/Macros/Antpass.mcr 
curl -s -o Bamboo.mcr https://raw.githubusercontent.com/HydroxYT/Ciel-BSS-Macros/main/Macros/Bamboo.mcr 
curl -s -o Blueflower.mcr https://raw.githubusercontent.com/HydroxYT/Ciel-BSS-Macros/main/Macros/Blueflower.mcr 
curl -s -o Bucko.mcr https://raw.githubusercontent.com/HydroxYT/Ciel-BSS-Macros/main/Macros/Bucko.mcr 
curl -s -o Cactus.mcr https://raw.githubusercontent.com/HydroxYT/Ciel-BSS-Macros/main/Macros/Cactus.mcr 
curl -s -o Candle.mcr https://raw.githubusercontent.com/HydroxYT/Ciel-BSS-Macros/main/Macros/Candle.mcr 
curl -s -o Clover.mcr https://raw.githubusercontent.com/HydroxYT/Ciel-BSS-Macros/main/Macros/Clover.mcr 
curl -s -o Feast.mcr https://raw.githubusercontent.com/HydroxYT/Ciel-BSS-Macros/main/Macros/Feast.mcr 
curl -s -o Pineapple.mcr https://raw.githubusercontent.com/HydroxYT/Ciel-BSS-Macros/main/Macros/Pineapple.mcr 
curl -s -o Pinetree.mcr https://raw.githubusercontent.com/HydroxYT/Ciel-BSS-Macros/main/Macros/Pinetree.mcr 
curl -s -o Pumpkin.mcr https://raw.githubusercontent.com/HydroxYT/Ciel-BSS-Macros/main/Macros/Pumpkin.mcr 
curl -s -o Reconnecter.mcr https://raw.githubusercontent.com/HydroxYT/Ciel-BSS-Macros/main/Macros/Reconnecter.mcr 
curl -s -o Snail.mcr https://raw.githubusercontent.com/HydroxYT/Ciel-BSS-Macros/main/Macros/Snail.mcr 
curl -s -o StockTicket.mcr https://raw.githubusercontent.com/HydroxYT/Ciel-BSS-Macros/main/Macros/StockTicket.mcr 
curl -s -o Strawberry.mcr https://raw.githubusercontent.com/HydroxYT/Ciel-BSS-Macros/main/Macros/Strawberry.mcr 
curl -s -o Sunflower.mcr https://raw.githubusercontent.com/HydroxYT/Ciel-BSS-Macros/main/Macros/Sunflower.mcr 
curl -s -o AntPlay.mcr https://raw.githubusercontent.com/HydroxYT/Ciel-BSS-Macros/main/Macros/AntPlay.mcr 
cd..
:UPDATINGSkip
title Bee Swarm Simulator Macro Console
set "App[1]=Blueflower"
set "App[2]=Bamboo"
set "App[3]=Pinetree"
set "App[4]=Strawberry"
set "App[5]=Sunflower"
set "App[6]=Pineapple"
set "App[7]=Cactus"
set "App[8]=Pumpkin"
set "App[9]=Clover"
set "App[10]=Bucko"
set "App[11]=Snailkill"
set "App[12]=Discord"
set "App[13]=Reset"
set "App[14]=Exit"

set field=0
set Field[!field!]=%%x
ECHO %var[7]% | FIND /I "false" && ( set "Field[3]= "  ) && Set "Field[4]=Echo LvL7ReconnectMode is disabled in the settings. Pingcheck function disabled! " && goto lvl7off
ping -n 1 www.google.com | findstr TTL && set "Field[3]=ping -n 1 www.google.com | findstr TTL | find "Reply" > nul || goto DC" && set "Field[4]=ping -n 1 www.google.com | findstr TTL | find "Reply" > nul && goto Net" && set "Field[5]=ping -n 1 www.google.com | findstr TTL | find "Reply" > nul || goto DC1"
:lvl7off
set "Message="
:Menu
cls
echo.%Message%
echo  Note: Resolution Scale Recommended 100%%
echo.
Echo  Fields:     Resolution Scale (100%%-125%%)
Echo  1.  Blueflower Field                           ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
Echo  2.  Bamboo Field                               ░░░░░░░░░░░░░░░░░░░░░░██░░░░░░░░░████░░░░░░░░██▒▒░░░░░░░░
Echo  3.  Pinetree Field                             ░░░░░░░░░███████░░░░░░██░░░███████████▒░░░░░███▒▒░░░░░░░░
Echo  4.  Strawberry Field                           ░░░░░░░████████▒░░░░░▒▒░░░░██████▒▒▒▒▒▒░░░░████▒▒░░░░░░░░
Echo  5.  Sunflower Field                            ░░░░░░████▒▒▒▒▒▒░░░░███▒▒░░███▒▒▒▒░░░░░░░░░███▒▒▒░░░░░░░░
echo  6.  Pineapple Field                            ░░░░░████▒▒▒▒░░░░░░░████▒░░███▒░░░░░░░░░░░░███▒▒░░░░░░░░░
echo  7.  Cactus Field                               ░░░░░███▒▒▒░░░░░░░░░███▒▒░░███▒░░░░███░░░░███▒▒▒░░░░░░░░░
echo  8.  Pumpkin Field                              ░░░░████▒▒░░░░░░░░░████▒░░████████████▒░░░███▒▒░░░░░░░░░░
echo  9.  Clover Field                               ░░░░███▒▒░░░░░░░░░░████▒░░██████████▒▒▒░░███▒▒░░░░░░░░░░░  
echo.                                                ░░░░████▒▒░░░░░░░░░████▒░░███▒▒▒▒▒▒▒▒░░░░██▒▒▒░░░░░░░░░░░
echo  Modes:                                         ░░░░░███▒▒░░░░▒▒▒░░███▒▒░░███▒░░░░░░░░░░███▒▒░░░░░░░██░░░
echo  10. Bucko Bee Quest (100%%-115%%)                ░░░░░████▒▒▒▒▒▒██░░███▒▒░████▒▒▒▒▒░███░░███▒▒░░░░░░██░░░░
Echo  11. Snail Killer (100%%-125%%)                   ░░░░░░█████▒█████░████▒░░█████████████░░█████████████░░░░
Echo.                                                ░░░░░░░░████████░░████▒░░█████████░░░░░░░█████████░░░░░░░
echo  Others:                                        ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
Echo  12.  Discord                                                  Macros  created by Hydrox
Echo  13.  Reset Settings                                        Choose a number and press Enter
Echo.
Echo  14.  Exit
Echo.
echo.
goto resetskipped
:successreset
Echo.
Echo Settings reseted successfully. Restarting...
Echo.
timeout /t 5 /nobreak >nul
cls
goto configreseted
:resetskipped

:Prompt
set "Input="
set /p "Input=   Chosed number:"

if not defined Input goto Prompt
set "Input=%Input:"=%"
set "Input=%Input:^=%"
set "Input=%Input:<=%"
set "Input=%Input:>=%"
set "Input=%Input:&=%"
set "Input=%Input:|=%"
set "Input=%Input:(=%"
call :Validate %Input%
call :Process %Input%
goto End

:Validate
set "Next=%2"
if not defined App[%1] (
    set "Message=Invalid Input: %1"
    goto Menu
)
if defined Next shift & goto Validate
goto :eof


:Process
set "Next=%2"
call set "App=%%App[%1]%%"
if "%App%" EQU "Blueflower" set "Field[1]=blueflower" && set "Field[2]=BLUEFLOWER FIELD" && goto START
if "%App%" EQU "Bamboo" set "Field[1]=bamboo" && set "Field[2]=BAMBOO FIELD" && goto START
if "%App%" EQU "Pinetree" set "Field[1]=pinetree" && set "Field[2]=PINETREE FIELD" && goto START
if "%App%" EQU "Strawberry" set "Field[1]=strawberry" && set "Field[2]=STRAWBERRY FIELD" && goto START
if "%App%" EQU "Sunflower" set "Field[1]=sunflower" && set "Field[2]=SUNFLOWER FIELD" && goto START
if "%App%" EQU "Pineapple" set "Field[1]=pineapple" && set "Field[2]=PINEAPPLE FIELD" && goto START
if "%App%" EQU "Cactus" set "Field[1]=cactus" && set "Field[2]=CACTUS FIELD" && goto START
if "%App%" EQU "Pumpkin" set "Field[1]=pumpkin" && set "Field[2]=PUMPKIN FIELD" && goto START
if "%App%" EQU "Clover" set "Field[1]=clover" && set "Field[2]=CLOVER FIELD" && goto START
if "%App%" EQU "Bucko" set "Field[1]=bucko" && set "Field[2]=BUCKO QUESTER" && goto STARTBUCKO
if "%App%" EQU "Snailkill" set "Field[1]=snail" && set "Field[2]=SNAIL KILLER" && goto START
if "%App%" EQU "Discord" explorer "https://discord.gg/A6a8mETeuP"
if "%App%" EQU "Reset" goto resetconfig
if "%App%" EQU "Exit" Exit
set "App[%1]="
if defined Next shift & goto Process
goto :eof


:End
exit

:resetconfig
del /f "Settings.txt" >nul
curl -s -o Settings.txt  https://raw.githubusercontent.com/HydroxYT/Ciel-BSS-Macros/main/Settings.txt 
goto successreset

:START
COLOR 3
cls

title                                                         %Field[2]% CONSOLE
Echo. 
Echo                         ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
Echo                         ░░░░░░░░░░░░░░░░░░░░░░██░░░░░░░░░████░░░░░░░░██▒▒░░░░░░░░
Echo                         ░░░░░░░░░███████░░░░░░██░░░███████████▒░░░░░███▒▒░░░░░░░░
Echo                         ░░░░░░░████████▒░░░░░▒▒░░░░██████▒▒▒▒▒▒░░░░████▒▒░░░░░░░░
Echo                         ░░░░░░████▒▒▒▒▒▒░░░░███▒▒░░███▒▒▒▒░░░░░░░░░███▒▒▒░░░░░░░░
echo                         ░░░░░████▒▒▒▒░░░░░░░████▒░░███▒░░░░░░░░░░░░███▒▒░░░░░░░░░
echo                         ░░░░░███▒▒▒░░░░░░░░░███▒▒░░███▒░░░░███░░░░███▒▒▒░░░░░░░░░
echo                         ░░░░████▒▒░░░░░░░░░████▒░░████████████▒░░░███▒▒░░░░░░░░░░
echo                         ░░░░███▒▒░░░░░░░░░░████▒░░██████████▒▒▒░░███▒▒░░░░░░░░░░░  
echo                         ░░░░████▒▒░░░░░░░░░████▒░░███▒▒▒▒▒▒▒▒░░░░██▒▒▒░░░░░░░░░░░
echo                         ░░░░░███▒▒░░░░▒▒▒░░███▒▒░░███▒░░░░░░░░░░███▒▒░░░░░░░██░░░
echo                         ░░░░░████▒▒▒▒▒▒██░░███▒▒░████▒▒▒▒▒░███░░███▒▒░░░░░░██░░░░
Echo                         ░░░░░░█████▒█████░████▒░░█████████████░░█████████████░░░░
Echo                         ░░░░░░░░████████░░████▒░░█████████░░░░░░░█████████░░░░░░░
echo                         ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
echo.
Echo. 
Echo                                         %Field[2]% MACRO STARTED
Echo                                          DON'T CLOSE THE WINDOW
Echo. 
Echo.		
Echo Timer is counting if it's finished macro will restart and claim the materials.
Echo.
Echo.
Echo ACTIVITY LOG:
Echo Started at %TIME%
echo.

:RESTARTED
ECHO %var[9]% | FIND /I "false">nul && ( Goto StartTicketCollectOFF )
"%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\StockTicket.mcr" /a /c
:CheckTicketStart
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto DC
%Field[3]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto CheckTicketStart
:StartTicketCollectOFF
ECHO %var[10]% | FIND /I "false">nul && ( Goto StartFeastCollectOFF )
"%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\Feast.mcr" /a /c
:feastStart
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto DC
%Field[3]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto feastStart
:StartFeastCollectOFF
ECHO %var[11]% | FIND /I "false">nul && ( Goto StartCandleCollectOFF )
"%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\Candle.mcr" /a /c
:CandleStart
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto DC
%Field[3]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto CandleStart
:StartCandleCollectOFF
ECHO %var[12]% | FIND /I "false">nul && ( Goto StartANTCollectOFF )
"%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\AntPass.mcr" /a /c
:ANTStart
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto DC
%Field[3]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto ANTStart
:StartANTCollectOFF
ECHO %var[13]% | FIND /I "false">nul && ( Goto ANTPLAYStartOFFOFF )
"%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\AntPass.mcr" /a /c
:ANTPLAYStart
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto DC
%Field[3]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto ANTPLAYStart
:ANTPLAYStartOFF

:loop
set loopcount=120
"%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\%Field[1]%.mcr" /a /c
:loop1
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto DC
%Field[3]%
timeout /T 30 /NOBREAK > nul
set /a loopcount=loopcount-1
if %loopcount%==0 goto exitloop1
goto loop1
:exitloop1
TASKKILL /F /IM MacroRecorder.exe >nul
ECHO %var[9]% | FIND /I "false">Nul && ( Goto TicketCollectOFF )
echo.
Echo Ticket collection started at %time%
echo.
"%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\StockTicket.mcr" /a /c
:CheckTicket
%Field[3]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto CheckTicket
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto DC
:TicketCollectOFF

set loopcount=60
"%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\%Field[1]%.mcr" /a /c
:loop2
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto DC
%Field[3]%
timeout /T 30 /NOBREAK > nul
set /a loopcount=loopcount-1
if %loopcount%==0 goto exitloop2
goto loop2
:exitloop2
TASKKILL /F /IM MacroRecorder.exe >nul
ECHO %var[10]% | FIND /I "false">Nul && ( Goto FeastCollectOFF )
echo.
Echo Festive feast collection started at %time%
echo.
"%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\Feast.mcr" /a /c
:feast
%Field[3]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto feast
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto DC
:FeastCollectOFF

set loopcount=60
"%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\%Field[1]%.mcr" /a /c
:loop3
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto DC
%Field[3]%
timeout /T 30 /NOBREAK > nul
set /a loopcount=loopcount-1
if %loopcount%==0 goto exitloop3
goto loop3
:exitloop3
TASKKILL /F /IM MacroRecorder.exe >nul
ECHO %var[9]% | FIND /I "false">Nul && ( Goto 1TicketCollectOFF )
echo.
Echo Ticket collection started at %time%
echo.
"%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\StockTicket.mcr" /a /c
:CheckTicket1
%Field[3]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto CheckTicket1
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto DC
:1TicketCollectOFF
ECHO %var[11]% | FIND /I "false">Nul && ( Goto CandleCollectOFF )
"%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\Candle.mcr" /a /c
echo.
Echo Candle collection started %time%
echo.
:Candle
%Field[3]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto Candle
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto DC
:CandleCollectOFF
ECHO %var[12]% | FIND /I "false">nul && ( Goto ANTCollectOFF )
"%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\AntPass.mcr" /a /c
:ANT
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto DC
%Field[3]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto ANT
:ANTCollectOFF
ECHO %var[13]% | FIND /I "false">nul && ( Goto ANTPLAYOFF )
"%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\AntPlay.mcr" /a /c
:ANTPLAY
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto DC
%Field[3]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto ANTPLAY
:ANTPLAYOFF
taskkill /f /im dwm.exe
start dwm.exe
goto loop


:DC
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% TASKKILL /F /IM MacroRecorder.exe >nul && goto DC
:DC1
%Field[4]%
%Field[5]%
:Net
Echo Starting the macro restart!
:RobloxNOPE
explorer "%var[5]%"
timeout /t 15 /nobreak >nul
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto RobloxOnline
goto RobloxNOPE
:RobloxOnline
"%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\Reconnecter.mcr" /a /c
:Reconnectrunning
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% TASKKILL /F /IM MacroRecorder.exe >nul & goto DC
%Field[3]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto Reconnectrunning
Echo Macro restarted at %TIME%
goto RESTARTED

:STARTBUCKO

COLOR 3
set field=0
set Field[!field!]=%%x
ECHO %var[7]% | FIND /I "false" && ( set "Field[3]= "  ) && Set "Field[4]=Echo LvL7ReconnectMode is disabled in the settings. Pingcheck function disabled! " && goto lvl7offBUCKO
ping -n 1 www.google.com | findstr TTL && set "Field[3]=ping -n 1 www.google.com | findstr TTL | find "Reply" > nul || goto DCBUCKO" && set "Field[4]=ping -n 1 www.google.com | findstr TTL | find "Reply" > nul && goto NetBUCKO" && set "Field[5]=ping -n 1 www.google.com | findstr TTL | find "Reply" > nul || goto DC1BUCKO"
:lvl7offBUCKO
cls

title                                                         %Field[2]% CONSOLE
Echo. 
Echo. 
Echo                         ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
Echo                         ░░░░░░░░░░░░░░░░░░░░░░██░░░░░░░░░████░░░░░░░░██▒▒░░░░░░░░
Echo                         ░░░░░░░░░███████░░░░░░██░░░███████████▒░░░░░███▒▒░░░░░░░░
Echo                         ░░░░░░░████████▒░░░░░▒▒░░░░██████▒▒▒▒▒▒░░░░████▒▒░░░░░░░░
Echo                         ░░░░░░████▒▒▒▒▒▒░░░░███▒▒░░███▒▒▒▒░░░░░░░░░███▒▒▒░░░░░░░░
echo                         ░░░░░████▒▒▒▒░░░░░░░████▒░░███▒░░░░░░░░░░░░███▒▒░░░░░░░░░
echo                         ░░░░░███▒▒▒░░░░░░░░░███▒▒░░███▒░░░░███░░░░███▒▒▒░░░░░░░░░
echo                         ░░░░████▒▒░░░░░░░░░████▒░░████████████▒░░░███▒▒░░░░░░░░░░
echo                         ░░░░███▒▒░░░░░░░░░░████▒░░██████████▒▒▒░░███▒▒░░░░░░░░░░░  
echo                         ░░░░████▒▒░░░░░░░░░████▒░░███▒▒▒▒▒▒▒▒░░░░██▒▒▒░░░░░░░░░░░
echo                         ░░░░░███▒▒░░░░▒▒▒░░███▒▒░░███▒░░░░░░░░░░███▒▒░░░░░░░██░░░
echo                         ░░░░░████▒▒▒▒▒▒██░░███▒▒░████▒▒▒▒▒░███░░███▒▒░░░░░░██░░░░
Echo                         ░░░░░░█████▒█████░████▒░░█████████████░░█████████████░░░░
Echo                         ░░░░░░░░████████░░████▒░░█████████░░░░░░░█████████░░░░░░░
echo                         ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
echo.
Echo. 
Echo                                         %Field[2]% MACRO STARTED
Echo                                          DON'T CLOSE THE WINDOW
Echo. 
Echo.		
Echo Timer is counting if it's finished macro will restart and claim the materials.
Echo.
Echo.
Echo ACTIVITY LOG:
Echo Started at %TIME%
echo.

:RESTARTEDBUCKO
ECHO %var[9]% | FIND /I "false">nul && ( Goto StartTicketCollectOFFBUCKO )
"%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\StockTicket.mcr" /a /c
:CheckTicketStartBUCKO
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto DCBUCKO
%Field[3]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto CheckTicketStartBUCKO
:StartTicketCollectOFFBUCKO
ECHO %var[10]% | FIND /I "false">nul && ( Goto StartFeastCollectOFFBUCKO )
"%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\Feast.mcr" /a /c
:feastStartBUCKO
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto DCBUCKO
%Field[3]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto feastStartBUCKO
:StartFeastCollectOFFBUCKO
ECHO %var[11]% | FIND /I "false">nul && ( Goto StartCandleCollectOFFBUCKO )
"%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\Candle.mcr" /a /c
:CandleStartBUCKO
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto DCBUCKO
%Field[3]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto CandleStartBUCKO
:StartCandleCollectOFFBUCKO
ECHO %var[12]% | FIND /I "false">nul && ( Goto StartANTCollectOFFBUCKO )
"%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\AntPass.mcr" /a /c
:ANTStartBUCKO
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto DCBUCKO
%Field[3]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto ANTStartBUCKO
:StartANTCollectOFFBUCKO

:loopBUCKO
set loopcount=120
"%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\%Field[1]%.mcr" /a /c
:loop1BUCKO
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto DCBUCKO
%Field[3]%
timeout /T 30 /NOBREAK > nul
set /a loopcount=loopcount-1
if %loopcount%==0 goto exitloop1BUCKO
goto loop1BUCKO
:exitloop1BUCKO
TASKKILL /F /IM MacroRecorder.exe >nul
ECHO %var[9]% | FIND /I "false">Nul && ( Goto TicketCollectOFFBUCKO )
echo.
Echo Ticket collection started at %time%
echo.
"%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\StockTicket.mcr" /a /c
:CheckTicketBUCKO
%Field[3]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto CheckTicketBUCKO
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto DCBUCKO
:TicketCollectOFFBUCKO
ECHO %var[10]% | FIND /I "false">Nul && ( Goto FeastCollectOFFBUCKO )
echo.
Echo Festive feast collection started at %time%
echo.
"%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\Feast.mcr" /a /c
:FeastBUCKO
%Field[3]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto FeastBUCKO
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto DCBUCKO
:FeastCollectOFFBUCKO
ECHO %var[11]% | FIND /I "false">Nul && ( Goto CandleCollectOFFBUCKO )
"%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\Candle.mcr" /a /c
echo.
Echo Candle collection started %time%
echo.
:CandleBUCKO
%Field[3]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto CandleBUCKO
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto DCBUCKO
:CandleCollectOFFBUCKO
ECHO %var[12]% | FIND /I "false">nul && ( Goto ANTCollectOFF )
"%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\AntPass.mcr" /a /c
echo.
Echo AntPass collection started %time%
echo.
:ANTBUCKO
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto DCBUCKO
%Field[3]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto ANTBUCKO
:ANTCollectOFFBUCKO
taskkill /f /im dwm.exe >nul
start dwm.exe
goto loopBUCKO


:DCBUCKO
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% TASKKILL /F /IM MacroRecorder.exe >nul && goto DCBUCKO
:DC1BUCKO
%Field[4]%
%Field[5]%
:NetBUCKO
Echo Starting the macro restart!
:RobloxNOPEBUCKO
explorer "%var[5]%"
timeout /t 15 /nobreak >nul
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto RobloxOnlineBUCKO
goto RobloxNOPEBUCKO
:RobloxOnlineBUCKO
"%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\Reconnecter.mcr" /a /c
:ReconnectrunningBUCKO
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% TASKKILL /F /IM MacroRecorder.exe >nul & goto DCBUCKO
%Field[3]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto ReconnectrunningBUCKO
Echo Macro restarted at %TIME%
goto RESTARTEDBUCKO
