@Echo off
cd %CD%

del /f "Gui.bat" >nul && curl -s -o NewUI.bat https://raw.githubusercontent.com/HydroxYT/Ciel-BSS-Macros/main/NewUI.bat && start NewUI.bat