REM --add the following to the top of your bat file--


@echo off

echo ==============================================================================
echo Installs the StageGlass 3dsmax Startup scripts in the #startup directory
echo ==============================================================================
echo.

REM ==========================
REM Install the startup Script
REM ==========================

SET startup_install_dir=F:\01_3DSMax_Default\Startup\

echo Installing StageGlass 3DS Max startup script...

copy "Troy_Startup.ms" "%startup_install_dir%"

REM ==========================
REM Install the Change Viewport Statistics Info
REM ==========================

SET macro_install_dir=F:\01_3DSMax_Default\UserMacros\

copy "SG_ViewportStats.mcr" "%macro_install_dir%"

pause