REM --add the following to the top of your bat file--


@echo off

echo ==============================================================================
echo Installs Troy_Tools 3dsmax Startup scripts in the #startup directory
echo ==============================================================================
echo.

REM ==========================
REM Install the startup Script
REM ==========================

SET startup_install_dir=%ADSK_3DSMAX_STARTUPSCRIPTS_ADDON_DIR%

echo Installing StageGlass 3DS Max startup script...

copy "Troy_Startup.ms" "%startup_install_dir%"

REM ==========================
REM Install the Change Viewport Statistics Info
REM ==========================

SET macro_install_dir=%ADSK_3DSMAX_MACROS_ADDON_DIR%

copy "TB_ViewportStats.mcr" "%macro_install_dir%"

pause