# TB_Statup Scripts Installation

This is a start-up script for 3DS Max to replace a maxstart.max file.  
This will setup the default state for 3DS Max simplifying standards across entire team.  
Script will be run under the following conditions:
   * 3DS Max start
   * Reset Max: File -> Reset
   * New File: File -> New


## Automated Installation
1. Run TB_Startup_install.bat to install the startup script along with a user macro shortcut for changing viewport statistics.


## Manual Installation

1. Copy the ```Troy_Starup.ms``` script to the 3DS Max MaxScript startup folder:

    If using the system variables for 3DS Max tools use ```%ADSK_3DSMAX_STARTUPSCRIPTS_ADDON_DIR%``` directory.  
        e.g. ```F:\01_3DSMax_Default\Startup```

    Or use the standard 3DS Max user startup folder:  
        ```C:\Users\<user name>\AppData\Local\Autodesk\3dsMax\2024 - 64bit\ENU\scripts\startup```

2. Copy the ```TB_ViewportStats.mcr``` to the following folder:

    If using the Autodesk system variables for 3DS Max tools use ```%ADSK_3DSMAX_MACROS_ADDON_DIR%``` directory.  
        e.g. ```F:\01_3DSMax_Default\UserMacros```  

    Or use the standard 3DS Max user macroscript folder:  
        ```C:\Users\<user name>\AppData\Local\Autodesk\3dsMax\2024 - 64bit\ENU\usermacros```  

3. Restart 3dsmax.  

## Uninstallation

1. Delete the ```Troy_Startup.ms``` and ```TB_ViewportStats.mcr``` scripts from the folders used above.

## What does this script do:
    * Set default directory location for #scripts to the following folder: F:\01_3DSMax_Default\Scripts\
    * Set default directory location for #userscripts to the following folder: F:\01_3DSMax_Default\Scripts\
    * Launch Troy Core functions script: TB_Functions.ms
    * Set system units to 1 unit = 1 cm
    * Set units display to US standard feet with decimal inches (Since most CAD data will be in imperial units)
    * Snap mode is set to 2.5D snaps
    * Enable vertex snapping
    * Enable grid snapping
    * Enable snapping display marker
    * Enable snapping to frozen objects
    * Enable snap axis constraints
    * Enable the display of snapping rubber band
    * Set world coordinate system to World (from the defaul: View)
    * Turn OFF viewport view cube
    * Reset to 4 viewports layout
    * Bottom right viewport set to Orthographic viewport (faster viewport performance and zooming capabilities)
    * Turn OFF grid in orthograhic viewport
    * Set Orthographic viewport to shaded mode with show edged faces
    * Viewport statistics are setup to show Total + Selection, show polys, show triangles, hide FPS
    * Turn ON viewport statistics (critical for asset team, easily turned off with hotkey: 7 (default hotkey))
    * Turn OFF selection brackets for all viewports
    * Turn OFF show selected with edged faces
    * Make TOP viewport active by default (great for quick import of assets coming into the scene with correct orientation)