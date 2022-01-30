@echo off
setlocal EnableExtensions
setlocal enabledelayedexpansion
color 3
chcp 65001 >nul
:MCRKILL
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% TASKKILL /F /IM MacroRecorder.exe && goto MCRKILL
cls
set count=0
for /f "tokens=*" %%x in (Settings.txt) do (
    set /a count+=1
    set Settings[!count!]=%%x
)

ECHO %Settings[4]% | FIND /I "false" && ( goto UPDATINGSkip  )
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
curl -s -o Start.bat https://raw.githubusercontent.com/HydroxYT/Ciel-BSS-Macros/main/Start.bat
:UPDATINGSkip
set Reconnectlink="%Settings[9]%"
set Field=0
set Field[!field!]=%%x
set LvL7=0
set LvL7[!lvl7!]=%%x
ECHO %Settings[5]% | FIND /I "false" && ( set "LvL7[1]= "  ) && Set "LvL7[2]=Echo LvL7ReconnectMode is disabled in the settings. Pingcheck function disabled! " && goto LvL7Off
ping -n 1 www.google.com | findstr TTL && set "LvL7[1]=ping -n 1 www.google.com | findstr TTL | find "Reply" > nul || goto Disconnected" && set "LvL7[2]=ping -n 1 www.google.com | findstr TTL | find "Reply" > nul && goto Net" && set "LvL7[3]=ping -n 1 www.google.com | findstr TTL | find "Reply" > nul || goto Disconnected1"
:LvL7Off

title Bee Swarm Simulator Macro Console

:Menu
cls
echo.
echo.
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
echo  10. Bucko Bee Quest (Strong Pc Requires)        ░░░░░████▒▒▒▒▒▒██░░███▒▒░████▒▒▒▒▒░███░░███▒▒░░░░░░██░░░░
Echo  11. Snail Killer (100%%-125%%)                  ░░░░░░█████▒█████░████▒░░█████████████░░█████████████░░░░
Echo.                                                ░░░░░░░░████████░░████▒░░█████████░░░░░░░█████████░░░░░░░
echo  Others:                                        ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
Echo  12.  Discord                                                  Macros  created by Hydrox
Echo  13.  Reset Settings                                        Choose a number and press Enter
Echo.
Echo  14.  Exit
Echo.
echo.

set "Option[1]=Blueflower"
set "Option[2]=Bamboo"
set "Option[3]=Pinetree"
set "Option[4]=Strawberry"
set "Option[5]=Sunflower"
set "Option[6]=Pineapple"
set "Option[7]=Cactus"
set "Option[8]=Pumpkin"
set "Option[9]=Clover"
set "Option[10]=Bucko"
set "Option[11]=Snailkill"
set "Option[12]=Discord"
set "Option[13]=Reset"
set "Option[14]=Exit"

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
set "Input=%Input:)=%"
call :Validate %Input%
call :Process %Input%
goto End

:Validate
set "Next=%2"
if not defined Option[%1] (
    set "Message=Invalid Input: %1"
    goto Menu
)
if defined Next shift & goto Validate
goto :eof


:Process
set "Next=%2"
call set "Option=%%Option[%1]%%"
if "%Option%" EQU "Blueflower" set "Field[1]=blueflower" && set "Field[2]=BLUEFLOWER FIELD" && goto START
if "%Option%" EQU "Bamboo" set "Field[1]=bamboo" && set "Field[2]=BAMBOO FIELD" && goto START
if "%Option%" EQU "Pinetree" set "Field[1]=pinetree" && set "Field[2]=PINETREE FIELD" && goto START
if "%Option%" EQU "Strawberry" set "Field[1]=strawberry" && set "Field[2]=STRAWBERRY FIELD" && goto START
if "%Option%" EQU "Sunflower" set "Field[1]=sunflower" && set "Field[2]=SUNFLOWER FIELD" && goto START
if "%Option%" EQU "Pineapple" set "Field[1]=Pineapple" && set "Field[2]=Pineapple FIELD" && goto START
if "%Option%" EQU "Cactus" set "Field[1]=cactus" && set "Field[2]=CACTUS FIELD" && goto START
if "%Option%" EQU "Pumpkin" set "Field[1]=pumpkin" && set "Field[2]=PUMPKIN FIELD" && goto START
if "%Option%" EQU "Clover" set "Field[1]=clover" && set "Field[2]=CLOVER FIELD" && goto START
if "%Option%" EQU "Bucko" set "Field[1]=bucko" && set "Field[2]=BUCKO QUESTER" && goto STARTBUCKO
if "%Option%" EQU "Snailkill" set "Field[1]=snail" && set "Field[2]=SNAIL KILLER" && goto START
if "%Option%" EQU "Discord" explorer "https://discord.gg/A6a8mETeuP"
if "%Option%" EQU "Reset" del /f "Settings.txt" >nul && curl -s -o Settings.txt https://raw.githubusercontent.com/HydroxYT/Ciel-BSS-Macros/main/Settings.txt && start Start.bat
if "%Option%" EQU "Exit" Exit
set "Option[%1]="
if defined Next shift & goto Process
goto :eof

:End
exit


























:START
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
Echo Macro start in 5 seconds after don't do ANYTHING!
Echo.
Echo.
Echo ACTIVITY LOG:
Echo Started at %TIME%
echo.

Timeout /t 5 /nobreak >nul
:RESTARTED

ECHO %Settings[13]% | FIND /I "false">nul && ( Goto StartTicketCollectOFF )
START "" "%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\StockTicket.mcr" /a /c
:CheckTicketStart
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto Disconnected
%LvL7[1]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto CheckTicketStart
:StartTicketCollectOFF



ECHO %Settings[14]% | FIND /I "false">nul && ( Goto StartFeastCollectOFF )
START "" "%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\Feast.mcr" /a /c
:FeastStart
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto Disconnected
%LvL7[1]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto Feaststart
:StartFeastCollectOFF



ECHO %Settings[15]% | FIND /I "false">nul && ( Goto StartCandleCollectOFF )
START "" "%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\Candle.mcr" /a /c
:CandleStart
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto Disconnected
%LvL7[1]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto CandleStart
:StartCandleCollectOFF



ECHO %Settings[17]% | FIND /I "false">nul && ( Goto StartANTCollectOFF )
START "" "%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\AntPass.mcr" /a /c
:ANTStart
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto Disconnected
%LvL7[1]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto ANTStart
:StartANTCollectOFF



ECHO %Settings[18]% | FIND /I "false">nul && ( Goto ANTPLAYStartOFF )
START "" "%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\AntPlay.mcr" /a /c
:ANTPLAYStart
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto Disconnected
%LvL7[1]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto ANTPLAYStart
:ANTPLAYStartOFF





:loop
set loopcount=120
START "" "%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\%Field[1]%.mcr" /a /c
:loop1
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto Disconnected
%LvL7[1]%
timeout /T 30 /NOBREAK > nul
set /a loopcount=loopcount-1
if %loopcount%==0 goto exitloop1
goto loop1
:exitloop1
TASKKILL /F /IM MacroRecorder.exe >nul



ECHO %Settings[13]% | FIND /I "false">Nul && ( Goto TicketCollectOFF )
echo.
Echo Ticket collection started at %time%
echo.
START "" "%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\StockTicket.mcr" /a /c
:CheckTicket
%LvL7[1]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto CheckTicket
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto Disconnected
:TicketCollectOFF



set loopcount=60
START "" "%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\%Field[1]%.mcr" /a /c
:loop2
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto Disconnected
%LvL7[1]%
timeout /T 30 /NOBREAK > nul
set /a loopcount=loopcount-1
if %loopcount%==0 goto exitloop2
goto loop2
:exitloop2
TASKKILL /F /IM MacroRecorder.exe >nul



ECHO %Settings[14]% | FIND /I "false">Nul && ( Goto FeastCollectOFF )
echo.
Echo Festive feast collection started at %time%
echo.
START "" "%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\Feast.mcr" /a /c
:feast
%LvL7[1]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto feast
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto Disconnected
:FeastCollectOFF



set loopcount=60
START "" "%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\%Field[1]%.mcr" /a /c
:loop3
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto Disconnected
%LvL7[1]%
timeout /T 30 /NOBREAK > nul
set /a loopcount=loopcount-1
if %loopcount%==0 goto exitloop3
goto loop3
:exitloop3
TASKKILL /F /IM MacroRecorder.exe >nul



ECHO %Settings[13]% | FIND /I "false">Nul && ( Goto 1TicketCollectOFF )
echo.
Echo Ticket collection started at %time%
echo.
START "" "%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\StockTicket.mcr" /a /c
:CheckTicket1
%LvL7[1]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto CheckTicket1
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto Disconnected
:1TicketCollectOFF



ECHO %Settings[15]% | FIND /I "false">Nul && ( Goto CandleCollectOFF )
START "" "%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\Candle.mcr" /a /c
echo.
Echo Candle collection started %time%
echo.
:Candle
%LvL7[1]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto Candle
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto Disconnected
:CandleCollectOFF



ECHO %Settings[17]% | FIND /I "false">nul && ( Goto ANTCollectOFF )
START "" "%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\AntPass.mcr" /a /c
:ANT
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto Disconnected
%LvL7[1]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto ANT
:ANTCollectOFF



ECHO %Settings[18]% | FIND /I "false">nul && ( Goto ANTPLAYOFF )
START "" "%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\AntPlay.mcr" /a /c
:ANTPLAY
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto Disconnected
%LvL7[1]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto ANTPLAY
:ANTPLAYOFF


taskkill /f /im dwm.exe
start dwm.exe
goto loop

:Disconnected
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% TASKKILL /F /IM MacroRecorder.exe >nul && goto Disconnected
:Disconnected1
%LvL7[2]%
%LvL7[3]%
:Net
Echo Starting the macro restart!
:RobloxNOPE
explorer %Reconnectlink%
timeout /t 15 /nobreak >nul
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto RobloxOnline
goto RobloxNOPE
:RobloxOnline
START "" "%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\Reconnecter.mcr" /a /c
:Reconnectrunning
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% TASKKILL /F /IM MacroRecorder.exe >nul & goto Disconnected
%Field[3]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto Reconnectrunning
Echo Macro restarted at %TIME%
goto RESTARTED






















:STARTBUCKO
set LvL7=0
set LvL7[!lvl7!]=%%x
ECHO %Settings[5]% | FIND /I "false" && ( set "LvL7[1]= "  ) && Set "LvL7[2]=Echo LvL7ReconnectMode is disabled in the settings. Pingcheck function disabled! " && goto LvL7OffBUCKO
ping -n 1 www.google.com | findstr TTL && set "LvL7[1]=ping -n 1 www.google.com | findstr TTL | find "Reply" > nul || goto DisconnectedBUCKO" && set "LvL7[2]=ping -n 1 www.google.com | findstr TTL | find "Reply" > nul && goto NetBUCKO" && set "LvL7[3]=ping -n 1 www.google.com | findstr TTL | find "Reply" > nul || goto Disconnected1BUCKO"
:LvL7OffBUCKO
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
Echo Macro start in 5 seconds after don't do ANYTHING!
Echo.
Echo.
Echo ACTIVITY LOG:
Echo Started at %TIME%
echo.
Timeout /t 5 /nobreak >nul
:RESTARTEDBUCKO

ECHO %Settings[13]% | FIND /I "false">nul && ( Goto StartTicketCollectOFFBUCKO )
START "" "%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\StockTicket.mcr" /a /c
:CheckTicketStartBUCKO
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto DisconnectedBUCKO
%LvL7[1]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto CheckTicketStartBUCKO
:StartTicketCollectOFFBUCKO



ECHO %Settings[14]% | FIND /I "false">nul && ( Goto StartFeastCollectOFFBUCKO )
START "" "%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\Feast.mcr" /a /c
:FeastStartBUCKO
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto DisconnectedBUCKO
%LvL7[1]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto FeastStartBUCKO
:StartFeastCollectOFFBUCKO



ECHO %Settings[15]% | FIND /I "false">nul && ( Goto StartCandleCollectOFFBUCKO )
START "" "%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\Candle.mcr" /a /c
:CandleStartBUCKO
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto DisconnectedBUCKO
%LvL7[1]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto CandleStartBUCKO
:StartCandleCollectOFFBUCKO



ECHO %Settings[17]% | FIND /I "false">nul && ( Goto StartANTCollectOFFBUCKO )
START "" "%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\AntPass.mcr" /a /c
:ANTStartBUCKO
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto DisconnectedBUCKO
%LvL7[1]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto ANTStartBUCKO
:StartANTCollectOFFBUCKO



ECHO %Settings[18]% | FIND /I "false">nul && ( Goto ANTPLAYStartOFFBUCKO )
START "" "%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\AntPlay.mcr" /a /c
:ANTPLAYStartBUCKO
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto DisconnectedBUCKO
%LvL7[1]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto ANTPLAYStartBUCKO
:ANTPLAYStartOFFBUCKO





:loopBUCKO
set loopcount=120
START "" "%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\%Field[1]%.mcr" /a /c
:loop1BUCKO
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto DisconnectedBUCKO
%LvL7[1]%
timeout /T 30 /NOBREAK > nul
set /a loopcount=loopcount-1
if %loopcount%==0 goto exitloop1BUCKO
goto loop1BUCKO
:exitloop1BUCKO
TASKKILL /F /IM MacroRecorder.exe >nul



ECHO %Settings[13]% | FIND /I "false">Nul && ( Goto TicketCollectOFFBUCKO )
Echo Ticket collection started at %time%
START "" "%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\StockTicket.mcr" /a /c
:CheckTicketBUCKO
%LvL7[1]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto CheckTicketBUCKO
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto DisconnectedBUCKO
:TicketCollectOFFBUCKO



ECHO %Settings[14]% | FIND /I "false">Nul && ( Goto FeastCollectOFFBUCKO )
Echo Festive feast collection started at %time%
START "" "%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\Feast.mcr" /a /c
:feastBUCKO
%LvL7[1]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto feastBUCKO
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto DisconnectedBUCKO
:FeastCollectOFFBUCKO



ECHO %Settings[15]% | FIND /I "false">Nul && ( Goto CandleCollectOFFBUCKO )
START "" "%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\Candle.mcr" /a /c
Echo Candle collection started %time%
:CandleBUCKO
%LvL7[1]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto Candle
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto DisconnectedBUCKO
:CandleCollectOFFBUCKO



ECHO %Settings[17]% | FIND /I "false">nul && ( Goto ANTCollectOFFBUCKO )
START "" "%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\AntPass.mcr" /a /c
Echo AntPass collection started %time%
:ANTBUCKO
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% Echo Macro Stopped %TIME% (Roblox Crash Detected) && goto DisconnectedBUCKO
%LvL7[1]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto ANTBUCKO
:ANTCollectOFFBUCKO



taskkill /f /im dwm.exe
start dwm.exe
goto loop

:DisconnectedBUCKO
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% TASKKILL /F /IM MacroRecorder.exe >nul && goto DisconnectedBUCKO
:Disconnected1BUCKO
%LvL7[2]%
%LvL7[3]%
:NetBUCKO
Echo Starting the macro restart!
:RobloxNOPEBUCKO
explorer %Reconnectlink%
timeout /t 15 /nobreak >nul
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto RobloxOnlineBUCKO
goto RobloxNOPEBUCKO
:RobloxOnlineBUCKO
START "" "%CD%\MacroRecorder\MacroRecorder.exe" "%CD%\Macros\Reconnecter.mcr" /a /c
:ReconnectrunningBUCKO
set EXE=RobloxPlayerBeta.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF not %%x == %EXE% TASKKILL /F /IM MacroRecorder.exe >nul & goto DisconnectedBUCKO
%Field[3]%
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto ReconnectrunningBUCKO
Echo Macro restarted at %TIME%
goto RESTARTEDBUCKO
