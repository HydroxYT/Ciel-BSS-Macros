@echo off
setlocal EnableExtensions
setlocal enabledelayedexpansion
color 3
chcp 65001 >nul
:MCRKILL
set EXE=MacroRecorder.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% TASKKILL /F /IM MacroRecorder.exe && goto MCRKILL
cls
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
echo                                     UPDATE CAMED OUT SETTINGS RESETED
echo                                          DON'T CLOSE THE WINDOW
echo                                     UPDATE CAMED OUT SETTINGS RESETED
echo                                          DON'T CLOSE THE WINDOW
echo                                     UPDATE CAMED OUT SETTINGS RESETED
echo                                          DON'T CLOSE THE WINDOW
echo                                     UPDATE CAMED OUT SETTINGS RESETED
echo                                          DON'T CLOSE THE WINDOW
echo                                     UPDATE CAMED OUT SETTINGS RESETED
echo                                          DON'T CLOSE THE WINDOW
echo                                     UPDATE CAMED OUT SETTINGS RESETED
echo                                          DON'T CLOSE THE WINDOW
echo                                     UPDATE CAMED OUT SETTINGS RESETED
echo                                          DON'T CLOSE THE WINDOW
echo                                     UPDATE CAMED OUT SETTINGS RESETED
echo                                          DON'T CLOSE THE WINDOW
echo                                     UPDATE CAMED OUT SETTINGS RESETED
echo                                          DON'T CLOSE THE WINDOW
echo                                     UPDATE CAMED OUT SETTINGS RESETED
echo                                          DON'T CLOSE THE WINDOW
echo                                     UPDATE CAMED OUT SETTINGS RESETED
echo                                          DON'T CLOSE THE WINDOW
echo                                     UPDATE CAMED OUT SETTINGS RESETED
echo                                          DON'T CLOSE THE WINDOW
echo                                     UPDATE CAMED OUT SETTINGS RESETED
echo                                          DON'T CLOSE THE WINDOW
echo                                     UPDATE CAMED OUT SETTINGS RESETED
echo                                          DON'T CLOSE THE WINDOW
echo.
Timeout /t 30 /nobreak
del /f "Start.bat" >nul && curl -s -o Start.bat https://raw.githubusercontent.com/HydroxYT/Ciel-BSS-Macros/main/Start.bat
del /f "Settings.txt" >nul && curl -s -o Settings.txt https://raw.githubusercontent.com/HydroxYT/Ciel-BSS-Macros/main/Settings.txt && start Start.bat && exit
