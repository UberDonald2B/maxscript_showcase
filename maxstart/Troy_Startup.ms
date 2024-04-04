--------------------------------------------
-- Setup 3DS Max Directory Paths --
--------------------------------------------

-- Setup Script Paths
SetDir #scripts @"F:\01_3DSMax_Default\Scripts\"
SetDir #userscripts @"F:\01_3DSMax_Default\Scripts\"



--------------------------------------------
-- Load Function Library --
--------------------------------------------
executeScriptFile @"F:\01_3DSMax_Default\Scripts\TB\TB_Fuctions.ms"



--------------------------------------------
-- Variables --
--------------------------------------------



--------------------------------------------
-- System Units Setup --
--------------------------------------------

-- System Units 1 unit = Centimeters
units.SystemScale = 1
units.SystemType = #Centimeters

--System units Display
units.DisplayType = #US
units.USType = #Ft_Dec_In



--------------------------------------------
-- Snap Settings --
--------------------------------------------

-- Set snap mode to 2.5D and turn snapping ON
snapMode.active = true
snapMode.type = #2_5D

-- Enable Vertex Snapping
snapmode.setOSnapItemActive 7 1 true

-- Enable Grid Snapping (Optional)
snapmode.setOSnapItemActive 4 1 false

-- Enable the display of the snapping marker
snapMode.display = true

-- Enable snapping to frozen objects
snapMode.toFrozen = true

-- Enable Snap Axis constraints
snapMode.axisConstraint = true

-- Enable the display of snapping rubber band
snapMode.displayRubberBand = true



--------------------------------------------
-- World Coordinate System --
--------------------------------------------
-- Set Reference Coordinate System to World
toolMode.coordsys #world



--------------------------------------------
-- Render Setup --
--------------------------------------------

-- Setup default renderer as VRay
-- if vray == undefined then (renderers.current = Arnold()) else (renderers.current = VRay())

-- Turn AutoBak OFF
autosave.Enable = false



--------------------------------------------
-- Viewport Setup --
--------------------------------------------

-- hide viewcube
ViewCubeOps.Visibility = false

-- Set the viewport configuration to 4 equally sized Viewports
viewport.ResetAllViews()

-- Select bottom right viewport to orthographic
viewport.activeViewport = 4
viewport.setType #view_iso_User

-- Turn OFF grid in the bottom right viewport
viewport.setGridVisibility 4 false

-- Set the bottom right viewport to shaded mode and turn ON edged faces
viewport.SetRenderLevel #smoothhighlights
viewport.SetShowEdgeFaces true

-- Setup the Statistics to show total + selection
ChangeStatistic()

-- Turn ON viewport Statistics for the bottom right viewport
max show statistics toggle

-- Turn OFF selection brackets, Turn OFF Show selected with Edge Faces, Set viewport to Standard Preset
disp = NitrousGraphicsManager.GetActiveViewportSetting()

for i = 1 to viewport.numViews do
(
	viewport.activeViewport = i
	disp.ShowSelectionBracketsEnabled = false
	disp.SelectedEdgedFacesEnabled = false
	disp.ViewportPreset = #Standard
)

-- Make Top viewport active by default (This is beneficial for importing objects right away, it's already in the correct viewport for our tools)
viewport.activeViewport = 1



--------------------------------------------
-- MaxScript Listener Dark Color Scheme --
--------------------------------------------
listenerBackgroundColor = (color 40 40 40)
inputTextColor = (color 225 225 225)
outputTextColor = (color 120 170 236)
listenerSelectionBackgroundColor = (color 58 82 184)
listenerSelectionForegroundColor = (color 255 218 18)
messageTextColor = (color 236 120 100)
macroRecorderBackgroundColor = (color 70 70 70)
macroRecorderTextColor = (color 225 225 225)
macroRecorderSelectionBackgroundColor = (color 58 82 184)
macroRecorderSelectionForegroundColor = (color 255 218 18)



--------------------------------------------
-- Re-Run Startup Script Triggers --
--------------------------------------------
callbacks.removeScripts id:#startup4reset
callbacks.addScript #systemPostReset filename:(getSourceFileName()) id:#startup4reset
callbacks.removeScripts id:#startup4new
callbacks.addScript #systemPostNew filename:(getSourceFileName()) id:#startup4new


	
-- To prevent “Do you want to save?” dialog after fresh start
setSaveRequired false

-- Print confirmation this script has run in the listener
format "Troy custom startup script was loaded!\n"



----------------------------------------------
-- Python Startup / Python Tools Menu Setup --
----------------------------------------------
py_startup_dir = @"G:\03_Projects\01_Personal\08_Training_Python_3DSMax\Week_08\02_TB_Assignment\Startup\"

-- Python Class Startup Testing
format "RUN: startup.py\n"

python_startup_path = py_startup_dir + "startup.py"
Python.ExecuteFile python_startup_path
	
	
	
	
	
