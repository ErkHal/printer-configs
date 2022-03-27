; ### Klipper Pressure Advance Calibration Pattern ###
; -------------------------------------------
;
; Printer: Ender 3 Pro
; Filament: Esun PLA plus
; Created: Sat Feb 19 2022 11:08:09 GMT+0200 (Eastern European Standard Time)
;
; Settings Printer:
; Filament Diameter = 1.75 mm
; Nozzle Diameter = 0.6 mm
; Start G-code = ; SET_HEATER_TEMPERATURE HEATER=heater_bed TARGET=65
; SET_HEATER_TEMPERATURE HEATER=extruder TARGET=215
; ; Ender 3 Custom Start G-code
; G92 E0 ; Reset Extruder
; G10 ; Retract filament to prevent oozing when homing
; G29 ; Probe bed leveling mesh
; G11 ; Prime the filament back
; BED_MESH_PROFILE LOAD=1
; G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
; G1 X0.1 Y20 Z0.3 F5000.0 ; Move to start position
; G1 X0.1 Y200.0 Z0.3 F1500.0 E15 ; Draw the first line
; G1 X0.4 Y200.0 Z0.3 F5000.0 ; Move to side a little
; G1 X0.4 Y20 Z0.3 F1500.0 E30 ; Draw the second line
; G92 E0 ; Reset Extruder
; G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
; G1 X5 Y20 Z0.3 F5000.0 ; Move over to prevent blob squish
; 
; End G-code = ; G91 ;Relative positioning
; G1 E-2 F2700 ;Retract a bit
; G1 E-2 Z0.2 F2400 ;Retract and raise Z
; G1 X5 Y5 F3000 ;Wipe out
; G1 Z10 ;Raise Z more
; G90 ;Absolute positioning
; 
; G1 X0 Y200 ;Present print
; M106 S0 ;Turn-off fan
; M104 S0 ;Turn-off hotend
; M140 S0 ;Turn-off bed
; M84 X Y E ;Disable all steppers but Z
; 
; Retraction Distance = 1.2 mm
; Layer Height = 0.2 mm
; Fan Speed = 0 %
; Z-axis Offset = 0 mm
;
; Settings Print Bed:
; Bed Size X = 225 mm
; Bed Size Y = 225 mm
;
; Settings Speed:
; Slow Printing Speed = 300 mm/min
; Fast Printing Speed = 6000 mm/min
; Movement Speed = 30000 mm/min
; Retract Speed = 2100 mm/min
; Unretract Speed = 2100 mm/min
; Printing Acceleration = 1000 mm/s^2
;
; Settings Pattern:
; Starting Value Factor = 0
; Ending Value Factor = 0.1
; Factor Stepping = 0.005
; Test Line Spacing = 5 mm
; Test Line Length Slow = 20 mm
; Test Line Length Fast = 40 mm
; Print Pattern = Standard
; Print Frame = true
; Number Lines = true
; Print Size X = 88 mm
; Print Size Y = 125 mm
; Print Rotation = 0 degree
;
; Settings Advance:
; Nozzle / Line Ratio = 1.2
; Use FWRETRACT = false
; Extrusion Multiplier = 1
; Prime Nozzle = false
; Prime Extrusion Multiplier = 2.5
; Prime Speed = 1800
; Dwell Time = 0 s
;
; prepare printing
;
M190 S65 ; <-- SET BED TEMPERATURE HERE - Wait to heat bed
M109 S215 ; <-- SET NOZZLE TEMPERATURE HERE - Wait to heat extruder for homing accuracy
; Ender 3 Custom Start G-code
G92 E0 ; Reset Extruder
G10 ; Retract filament to prevent oozing when homing
G29 ; Probe bed leveling mesh
G11 ; Prime the filament back
BED_MESH_PROFILE LOAD=1
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X0.1 Y20 Z0.3 F5000.0 ; Move to start position
G1 X0.1 Y200.0 Z0.3 F1500.0 E15 ; Draw the first line
G1 X0.4 Y200.0 Z0.3 F5000.0 ; Move to side a little
G1 X0.4 Y20 Z0.3 F1500.0 E30 ; Draw the second line
G92 E0 ; Reset Extruder
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X5 Y20 Z0.3 F5000.0 ; Move over to prevent blob squish

G21 ; Millimeter units
G90 ; Absolute XYZ
M83 ; Relative E
SET_VELOCITY_LIMIT ACCEL=1000 ACCEL_TO_DECEL=500 ; Acceleration
G92 E0 ; Reset extruder distance
M106 S0
G1 X112.5 Y112.5 F30000 ; move to start
G1 Z0.2 F300 ; Move to layer height
;
; print anchor frame
G1 X68.5 Y47 F30000 ; move to start
G1 X68.5 Y153 E6.98064 F300 ; print line
G1 X69.22 Y153 F30000 ; move to start
G1 X69.22 Y47 E6.98064 F300 ; print line
G1 E-1.2 F2100 ; retract
G1 X148.5 Y47 F30000 ; move to start
G1 E1.2 F2100 ; un-retract
G1 X148.5 Y153 E6.98064 F300 ; print line
G1 X147.78 Y153 F30000 ; move to start
G1 X147.78 Y47 E6.98064 F300 ; print line
G1 E-1.2 F2100 ; retract
;
; start the Test pattern
;
G1 X68.5 Y50 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0 ; set Pressure Advance
M117 K0 ; 
G1 E1.2 F2100 ; un-retract
G1 X88.5 Y50 E1.19736 F300 ; print line
G1 X128.5 Y50 E2.39473 F6000 ; print line
G1 X148.5 Y50 E1.19736 F300 ; print line
G1 E-1.2 F2100 ; retract
G1 X68.5 Y55 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.005 ; set Pressure Advance
M117 K0.005 ; 
G1 E1.2 F2100 ; un-retract
G1 X88.5 Y55 E1.19736 F300 ; print line
G1 X128.5 Y55 E2.39473 F6000 ; print line
G1 X148.5 Y55 E1.19736 F300 ; print line
G1 E-1.2 F2100 ; retract
G1 X68.5 Y60 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.01 ; set Pressure Advance
M117 K0.01 ; 
G1 E1.2 F2100 ; un-retract
G1 X88.5 Y60 E1.19736 F300 ; print line
G1 X128.5 Y60 E2.39473 F6000 ; print line
G1 X148.5 Y60 E1.19736 F300 ; print line
G1 E-1.2 F2100 ; retract
G1 X68.5 Y65 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.015 ; set Pressure Advance
M117 K0.015 ; 
G1 E1.2 F2100 ; un-retract
G1 X88.5 Y65 E1.19736 F300 ; print line
G1 X128.5 Y65 E2.39473 F6000 ; print line
G1 X148.5 Y65 E1.19736 F300 ; print line
G1 E-1.2 F2100 ; retract
G1 X68.5 Y70 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.02 ; set Pressure Advance
M117 K0.02 ; 
G1 E1.2 F2100 ; un-retract
G1 X88.5 Y70 E1.19736 F300 ; print line
G1 X128.5 Y70 E2.39473 F6000 ; print line
G1 X148.5 Y70 E1.19736 F300 ; print line
G1 E-1.2 F2100 ; retract
G1 X68.5 Y75 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.025 ; set Pressure Advance
M117 K0.025 ; 
G1 E1.2 F2100 ; un-retract
G1 X88.5 Y75 E1.19736 F300 ; print line
G1 X128.5 Y75 E2.39473 F6000 ; print line
G1 X148.5 Y75 E1.19736 F300 ; print line
G1 E-1.2 F2100 ; retract
G1 X68.5 Y80 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.03 ; set Pressure Advance
M117 K0.03 ; 
G1 E1.2 F2100 ; un-retract
G1 X88.5 Y80 E1.19736 F300 ; print line
G1 X128.5 Y80 E2.39473 F6000 ; print line
G1 X148.5 Y80 E1.19736 F300 ; print line
G1 E-1.2 F2100 ; retract
G1 X68.5 Y85 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.035 ; set Pressure Advance
M117 K0.035 ; 
G1 E1.2 F2100 ; un-retract
G1 X88.5 Y85 E1.19736 F300 ; print line
G1 X128.5 Y85 E2.39473 F6000 ; print line
G1 X148.5 Y85 E1.19736 F300 ; print line
G1 E-1.2 F2100 ; retract
G1 X68.5 Y90 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.04 ; set Pressure Advance
M117 K0.04 ; 
G1 E1.2 F2100 ; un-retract
G1 X88.5 Y90 E1.19736 F300 ; print line
G1 X128.5 Y90 E2.39473 F6000 ; print line
G1 X148.5 Y90 E1.19736 F300 ; print line
G1 E-1.2 F2100 ; retract
G1 X68.5 Y95 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.045 ; set Pressure Advance
M117 K0.045 ; 
G1 E1.2 F2100 ; un-retract
G1 X88.5 Y95 E1.19736 F300 ; print line
G1 X128.5 Y95 E2.39473 F6000 ; print line
G1 X148.5 Y95 E1.19736 F300 ; print line
G1 E-1.2 F2100 ; retract
G1 X68.5 Y100 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.05 ; set Pressure Advance
M117 K0.05 ; 
G1 E1.2 F2100 ; un-retract
G1 X88.5 Y100 E1.19736 F300 ; print line
G1 X128.5 Y100 E2.39473 F6000 ; print line
G1 X148.5 Y100 E1.19736 F300 ; print line
G1 E-1.2 F2100 ; retract
G1 X68.5 Y105 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.055 ; set Pressure Advance
M117 K0.055 ; 
G1 E1.2 F2100 ; un-retract
G1 X88.5 Y105 E1.19736 F300 ; print line
G1 X128.5 Y105 E2.39473 F6000 ; print line
G1 X148.5 Y105 E1.19736 F300 ; print line
G1 E-1.2 F2100 ; retract
G1 X68.5 Y110 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.06 ; set Pressure Advance
M117 K0.06 ; 
G1 E1.2 F2100 ; un-retract
G1 X88.5 Y110 E1.19736 F300 ; print line
G1 X128.5 Y110 E2.39473 F6000 ; print line
G1 X148.5 Y110 E1.19736 F300 ; print line
G1 E-1.2 F2100 ; retract
G1 X68.5 Y115 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.065 ; set Pressure Advance
M117 K0.065 ; 
G1 E1.2 F2100 ; un-retract
G1 X88.5 Y115 E1.19736 F300 ; print line
G1 X128.5 Y115 E2.39473 F6000 ; print line
G1 X148.5 Y115 E1.19736 F300 ; print line
G1 E-1.2 F2100 ; retract
G1 X68.5 Y120 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.07 ; set Pressure Advance
M117 K0.07 ; 
G1 E1.2 F2100 ; un-retract
G1 X88.5 Y120 E1.19736 F300 ; print line
G1 X128.5 Y120 E2.39473 F6000 ; print line
G1 X148.5 Y120 E1.19736 F300 ; print line
G1 E-1.2 F2100 ; retract
G1 X68.5 Y125 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.075 ; set Pressure Advance
M117 K0.075 ; 
G1 E1.2 F2100 ; un-retract
G1 X88.5 Y125 E1.19736 F300 ; print line
G1 X128.5 Y125 E2.39473 F6000 ; print line
G1 X148.5 Y125 E1.19736 F300 ; print line
G1 E-1.2 F2100 ; retract
G1 X68.5 Y130 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.08 ; set Pressure Advance
M117 K0.08 ; 
G1 E1.2 F2100 ; un-retract
G1 X88.5 Y130 E1.19736 F300 ; print line
G1 X128.5 Y130 E2.39473 F6000 ; print line
G1 X148.5 Y130 E1.19736 F300 ; print line
G1 E-1.2 F2100 ; retract
G1 X68.5 Y135 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.085 ; set Pressure Advance
M117 K0.085 ; 
G1 E1.2 F2100 ; un-retract
G1 X88.5 Y135 E1.19736 F300 ; print line
G1 X128.5 Y135 E2.39473 F6000 ; print line
G1 X148.5 Y135 E1.19736 F300 ; print line
G1 E-1.2 F2100 ; retract
G1 X68.5 Y140 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.09 ; set Pressure Advance
M117 K0.09 ; 
G1 E1.2 F2100 ; un-retract
G1 X88.5 Y140 E1.19736 F300 ; print line
G1 X128.5 Y140 E2.39473 F6000 ; print line
G1 X148.5 Y140 E1.19736 F300 ; print line
G1 E-1.2 F2100 ; retract
G1 X68.5 Y145 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.095 ; set Pressure Advance
M117 K0.095 ; 
G1 E1.2 F2100 ; un-retract
G1 X88.5 Y145 E1.19736 F300 ; print line
G1 X128.5 Y145 E2.39473 F6000 ; print line
G1 X148.5 Y145 E1.19736 F300 ; print line
G1 E-1.2 F2100 ; retract
G1 X68.5 Y150 F30000 ; move to start
;
; Mark the test area for reference
M117 K0
SET_PRESSURE_ADVANCE ADVANCE=0 ; Set Pressure Advance 0
G1 X88.5 Y155 F30000 ; move to start
G1 E1.2 F2100 ; un-retract
G1 X88.5 Y175 E1.19736 F300 ; print line
G1 E-1.2 F2100 ; retract
G1 X128.5 Y155 F30000 ; move to start
G1 E1.2 F2100 ; un-retract
G1 X128.5 Y175 E1.19736 F300 ; print line
G1 E-1.2 F2100 ; retract
G1 Z0.3 F300 ; zHop
;
; print K-values
;
G1 X150.5 Y48 F30000 ; move to start
G1 Z0.2 F300 ; zHop
G1 E1.2 F2100 ; un-retract
G1 X152.5 Y48 E0.11974 F300 ; 0
G1 X152.5 Y50 E0.11974 F300 ; 0
G1 X152.5 Y52 E0.11974 F300 ; 0
G1 X150.5 Y52 E0.11974 F300 ; 0
G1 X150.5 Y50 E0.11974 F300 ; 0
G1 X150.5 Y48 E0.11974 F300 ; 0
G1 E-1.2 F2100 ; retract
G1 Z0.3 F300 ; zHop
G1 X150.5 Y58 F30000 ; move to start
G1 Z0.2 F300 ; zHop
G1 E1.2 F2100 ; un-retract
G1 X152.5 Y58 E0.11974 F300 ; 0
G1 X152.5 Y60 E0.11974 F300 ; 0
G1 X152.5 Y62 E0.11974 F300 ; 0
G1 X150.5 Y62 E0.11974 F300 ; 0
G1 X150.5 Y60 E0.11974 F300 ; 0
G1 X150.5 Y58 E0.11974 F300 ; 0
G1 E-1.2 F2100 ; retract
G1 X153.5 Y58 F30000 ; move to start
G1 E1.2 F2100 ; un-retract
G1 X153.5 Y58.4 E0.02395 F300 ; dot
G1 E-1.2 F2100 ; retract
G1 X154.5 Y58 F30000 ; move to start
G1 E1.2 F2100 ; un-retract
G1 X156.5 Y58 E0.11974 F300 ; 0
G1 X156.5 Y60 E0.11974 F300 ; 0
G1 X156.5 Y62 E0.11974 F300 ; 0
G1 X154.5 Y62 E0.11974 F300 ; 0
G1 X154.5 Y60 E0.11974 F300 ; 0
G1 X154.5 Y58 E0.11974 F300 ; 0
G1 E-1.2 F2100 ; retract
G1 X157.5 Y58 F30000 ; move to start
G1 E1.2 F2100 ; un-retract
G1 X157.5 Y60 E0.11974 F300 ; 1
G1 X157.5 Y62 E0.11974 F300 ; 1
G1 E-1.2 F2100 ; retract
G1 Z0.3 F300 ; zHop
G1 X150.5 Y68 F30000 ; move to start
G1 Z0.2 F300 ; zHop
G1 E1.2 F2100 ; un-retract
G1 X152.5 Y68 E0.11974 F300 ; 0
G1 X152.5 Y70 E0.11974 F300 ; 0
G1 X152.5 Y72 E0.11974 F300 ; 0
G1 X150.5 Y72 E0.11974 F300 ; 0
G1 X150.5 Y70 E0.11974 F300 ; 0
G1 X150.5 Y68 E0.11974 F300 ; 0
G1 E-1.2 F2100 ; retract
G1 X153.5 Y68 F30000 ; move to start
G1 E1.2 F2100 ; un-retract
G1 X153.5 Y68.4 E0.02395 F300 ; dot
G1 E-1.2 F2100 ; retract
G1 X154.5 Y68 F30000 ; move to start
G1 E1.2 F2100 ; un-retract
G1 X156.5 Y68 E0.11974 F300 ; 0
G1 X156.5 Y70 E0.11974 F300 ; 0
G1 X156.5 Y72 E0.11974 F300 ; 0
G1 X154.5 Y72 E0.11974 F300 ; 0
G1 X154.5 Y70 E0.11974 F300 ; 0
G1 X154.5 Y68 E0.11974 F300 ; 0
G1 E-1.2 F2100 ; retract
G1 X157.5 Y68 F30000 ; move to start
G1 E1.2 F2100 ; un-retract
G1 X157.5 Y70 F30000 ; move to start
G1 X157.5 Y72 F30000 ; move to start
G1 X159.5 Y72 E0.11974 F300 ; 2
G1 X159.5 Y70 E0.11974 F300 ; 2
G1 X157.5 Y70 E0.11974 F300 ; 2
G1 X157.5 Y68 E0.11974 F300 ; 2
G1 X159.5 Y68 E0.11974 F300 ; 2
G1 E-1.2 F2100 ; retract
G1 Z0.3 F300 ; zHop
G1 X150.5 Y78 F30000 ; move to start
G1 Z0.2 F300 ; zHop
G1 E1.2 F2100 ; un-retract
G1 X152.5 Y78 E0.11974 F300 ; 0
G1 X152.5 Y80 E0.11974 F300 ; 0
G1 X152.5 Y82 E0.11974 F300 ; 0
G1 X150.5 Y82 E0.11974 F300 ; 0
G1 X150.5 Y80 E0.11974 F300 ; 0
G1 X150.5 Y78 E0.11974 F300 ; 0
G1 E-1.2 F2100 ; retract
G1 X153.5 Y78 F30000 ; move to start
G1 E1.2 F2100 ; un-retract
G1 X153.5 Y78.4 E0.02395 F300 ; dot
G1 E-1.2 F2100 ; retract
G1 X154.5 Y78 F30000 ; move to start
G1 E1.2 F2100 ; un-retract
G1 X156.5 Y78 E0.11974 F300 ; 0
G1 X156.5 Y80 E0.11974 F300 ; 0
G1 X156.5 Y82 E0.11974 F300 ; 0
G1 X154.5 Y82 E0.11974 F300 ; 0
G1 X154.5 Y80 E0.11974 F300 ; 0
G1 X154.5 Y78 E0.11974 F300 ; 0
G1 E-1.2 F2100 ; retract
G1 X157.5 Y78 F30000 ; move to start
G1 E1.2 F2100 ; un-retract
G1 X157.5 Y80 F30000 ; move to start
G1 X157.5 Y82 F30000 ; move to start
G1 X159.5 Y82 E0.11974 F300 ; 3
G1 X159.5 Y80 E0.11974 F300 ; 3
G1 X159.5 Y78 E0.11974 F300 ; 3
G1 X157.5 Y78 E0.11974 F300 ; 3
G1 X157.5 Y80 F30000 ; move to start
G1 X159.5 Y80 E0.11974 F300 ; 3
G1 E-1.2 F2100 ; retract
G1 Z0.3 F300 ; zHop
G1 X150.5 Y88 F30000 ; move to start
G1 Z0.2 F300 ; zHop
G1 E1.2 F2100 ; un-retract
G1 X152.5 Y88 E0.11974 F300 ; 0
G1 X152.5 Y90 E0.11974 F300 ; 0
G1 X152.5 Y92 E0.11974 F300 ; 0
G1 X150.5 Y92 E0.11974 F300 ; 0
G1 X150.5 Y90 E0.11974 F300 ; 0
G1 X150.5 Y88 E0.11974 F300 ; 0
G1 E-1.2 F2100 ; retract
G1 X153.5 Y88 F30000 ; move to start
G1 E1.2 F2100 ; un-retract
G1 X153.5 Y88.4 E0.02395 F300 ; dot
G1 E-1.2 F2100 ; retract
G1 X154.5 Y88 F30000 ; move to start
G1 E1.2 F2100 ; un-retract
G1 X156.5 Y88 E0.11974 F300 ; 0
G1 X156.5 Y90 E0.11974 F300 ; 0
G1 X156.5 Y92 E0.11974 F300 ; 0
G1 X154.5 Y92 E0.11974 F300 ; 0
G1 X154.5 Y90 E0.11974 F300 ; 0
G1 X154.5 Y88 E0.11974 F300 ; 0
G1 E-1.2 F2100 ; retract
G1 X157.5 Y88 F30000 ; move to start
G1 E1.2 F2100 ; un-retract
G1 X157.5 Y90 F30000 ; move to start
G1 X157.5 Y92 F30000 ; move to start
G1 X157.5 Y90 E0.11974 F300 ; 4
G1 X159.5 Y90 E0.11974 F300 ; 4
G1 X159.5 Y92 F30000 ; move to start
G1 X159.5 Y90 E0.11974 F300 ; 4
G1 X159.5 Y88 E0.11974 F300 ; 4
G1 E-1.2 F2100 ; retract
G1 Z0.3 F300 ; zHop
G1 X150.5 Y98 F30000 ; move to start
G1 Z0.2 F300 ; zHop
G1 E1.2 F2100 ; un-retract
G1 X152.5 Y98 E0.11974 F300 ; 0
G1 X152.5 Y100 E0.11974 F300 ; 0
G1 X152.5 Y102 E0.11974 F300 ; 0
G1 X150.5 Y102 E0.11974 F300 ; 0
G1 X150.5 Y100 E0.11974 F300 ; 0
G1 X150.5 Y98 E0.11974 F300 ; 0
G1 E-1.2 F2100 ; retract
G1 X153.5 Y98 F30000 ; move to start
G1 E1.2 F2100 ; un-retract
G1 X153.5 Y98.4 E0.02395 F300 ; dot
G1 E-1.2 F2100 ; retract
G1 X154.5 Y98 F30000 ; move to start
G1 E1.2 F2100 ; un-retract
G1 X156.5 Y98 E0.11974 F300 ; 0
G1 X156.5 Y100 E0.11974 F300 ; 0
G1 X156.5 Y102 E0.11974 F300 ; 0
G1 X154.5 Y102 E0.11974 F300 ; 0
G1 X154.5 Y100 E0.11974 F300 ; 0
G1 X154.5 Y98 E0.11974 F300 ; 0
G1 E-1.2 F2100 ; retract
G1 X157.5 Y98 F30000 ; move to start
G1 E1.2 F2100 ; un-retract
G1 X159.5 Y98 E0.11974 F300 ; 5
G1 X159.5 Y100 E0.11974 F300 ; 5
G1 X157.5 Y100 E0.11974 F300 ; 5
G1 X157.5 Y102 E0.11974 F300 ; 5
G1 X159.5 Y102 E0.11974 F300 ; 5
G1 E-1.2 F2100 ; retract
G1 Z0.3 F300 ; zHop
G1 X150.5 Y108 F30000 ; move to start
G1 Z0.2 F300 ; zHop
G1 E1.2 F2100 ; un-retract
G1 X152.5 Y108 E0.11974 F300 ; 0
G1 X152.5 Y110 E0.11974 F300 ; 0
G1 X152.5 Y112 E0.11974 F300 ; 0
G1 X150.5 Y112 E0.11974 F300 ; 0
G1 X150.5 Y110 E0.11974 F300 ; 0
G1 X150.5 Y108 E0.11974 F300 ; 0
G1 E-1.2 F2100 ; retract
G1 X153.5 Y108 F30000 ; move to start
G1 E1.2 F2100 ; un-retract
G1 X153.5 Y108.4 E0.02395 F300 ; dot
G1 E-1.2 F2100 ; retract
G1 X154.5 Y108 F30000 ; move to start
G1 E1.2 F2100 ; un-retract
G1 X156.5 Y108 E0.11974 F300 ; 0
G1 X156.5 Y110 E0.11974 F300 ; 0
G1 X156.5 Y112 E0.11974 F300 ; 0
G1 X154.5 Y112 E0.11974 F300 ; 0
G1 X154.5 Y110 E0.11974 F300 ; 0
G1 X154.5 Y108 E0.11974 F300 ; 0
G1 E-1.2 F2100 ; retract
G1 X157.5 Y108 F30000 ; move to start
G1 E1.2 F2100 ; un-retract
G1 X157.5 Y110 F30000 ; move to start
G1 X159.5 Y110 E0.11974 F300 ; 6
G1 X159.5 Y108 E0.11974 F300 ; 6
G1 X157.5 Y108 E0.11974 F300 ; 6
G1 X157.5 Y110 E0.11974 F300 ; 6
G1 X157.5 Y112 E0.11974 F300 ; 6
G1 X159.5 Y112 E0.11974 F300 ; 6
G1 E-1.2 F2100 ; retract
G1 Z0.3 F300 ; zHop
G1 X150.5 Y118 F30000 ; move to start
G1 Z0.2 F300 ; zHop
G1 E1.2 F2100 ; un-retract
G1 X152.5 Y118 E0.11974 F300 ; 0
G1 X152.5 Y120 E0.11974 F300 ; 0
G1 X152.5 Y122 E0.11974 F300 ; 0
G1 X150.5 Y122 E0.11974 F300 ; 0
G1 X150.5 Y120 E0.11974 F300 ; 0
G1 X150.5 Y118 E0.11974 F300 ; 0
G1 E-1.2 F2100 ; retract
G1 X153.5 Y118 F30000 ; move to start
G1 E1.2 F2100 ; un-retract
G1 X153.5 Y118.4 E0.02395 F300 ; dot
G1 E-1.2 F2100 ; retract
G1 X154.5 Y118 F30000 ; move to start
G1 E1.2 F2100 ; un-retract
G1 X156.5 Y118 E0.11974 F300 ; 0
G1 X156.5 Y120 E0.11974 F300 ; 0
G1 X156.5 Y122 E0.11974 F300 ; 0
G1 X154.5 Y122 E0.11974 F300 ; 0
G1 X154.5 Y120 E0.11974 F300 ; 0
G1 X154.5 Y118 E0.11974 F300 ; 0
G1 E-1.2 F2100 ; retract
G1 X157.5 Y118 F30000 ; move to start
G1 E1.2 F2100 ; un-retract
G1 X157.5 Y120 F30000 ; move to start
G1 X157.5 Y122 F30000 ; move to start
G1 X159.5 Y122 E0.11974 F300 ; 7
G1 X159.5 Y120 E0.11974 F300 ; 7
G1 X159.5 Y118 E0.11974 F300 ; 7
G1 E-1.2 F2100 ; retract
G1 Z0.3 F300 ; zHop
G1 X150.5 Y128 F30000 ; move to start
G1 Z0.2 F300 ; zHop
G1 E1.2 F2100 ; un-retract
G1 X152.5 Y128 E0.11974 F300 ; 0
G1 X152.5 Y130 E0.11974 F300 ; 0
G1 X152.5 Y132 E0.11974 F300 ; 0
G1 X150.5 Y132 E0.11974 F300 ; 0
G1 X150.5 Y130 E0.11974 F300 ; 0
G1 X150.5 Y128 E0.11974 F300 ; 0
G1 E-1.2 F2100 ; retract
G1 X153.5 Y128 F30000 ; move to start
G1 E1.2 F2100 ; un-retract
G1 X153.5 Y128.4 E0.02395 F300 ; dot
G1 E-1.2 F2100 ; retract
G1 X154.5 Y128 F30000 ; move to start
G1 E1.2 F2100 ; un-retract
G1 X156.5 Y128 E0.11974 F300 ; 0
G1 X156.5 Y130 E0.11974 F300 ; 0
G1 X156.5 Y132 E0.11974 F300 ; 0
G1 X154.5 Y132 E0.11974 F300 ; 0
G1 X154.5 Y130 E0.11974 F300 ; 0
G1 X154.5 Y128 E0.11974 F300 ; 0
G1 E-1.2 F2100 ; retract
G1 X157.5 Y128 F30000 ; move to start
G1 E1.2 F2100 ; un-retract
G1 X157.5 Y130 F30000 ; move to start
G1 X159.5 Y130 E0.11974 F300 ; 8
G1 X159.5 Y128 E0.11974 F300 ; 8
G1 X157.5 Y128 E0.11974 F300 ; 8
G1 X157.5 Y130 E0.11974 F300 ; 8
G1 X157.5 Y132 E0.11974 F300 ; 8
G1 X159.5 Y132 E0.11974 F300 ; 8
G1 X159.5 Y130 E0.11974 F300 ; 8
G1 E-1.2 F2100 ; retract
G1 Z0.3 F300 ; zHop
G1 X150.5 Y138 F30000 ; move to start
G1 Z0.2 F300 ; zHop
G1 E1.2 F2100 ; un-retract
G1 X152.5 Y138 E0.11974 F300 ; 0
G1 X152.5 Y140 E0.11974 F300 ; 0
G1 X152.5 Y142 E0.11974 F300 ; 0
G1 X150.5 Y142 E0.11974 F300 ; 0
G1 X150.5 Y140 E0.11974 F300 ; 0
G1 X150.5 Y138 E0.11974 F300 ; 0
G1 E-1.2 F2100 ; retract
G1 X153.5 Y138 F30000 ; move to start
G1 E1.2 F2100 ; un-retract
G1 X153.5 Y138.4 E0.02395 F300 ; dot
G1 E-1.2 F2100 ; retract
G1 X154.5 Y138 F30000 ; move to start
G1 E1.2 F2100 ; un-retract
G1 X156.5 Y138 E0.11974 F300 ; 0
G1 X156.5 Y140 E0.11974 F300 ; 0
G1 X156.5 Y142 E0.11974 F300 ; 0
G1 X154.5 Y142 E0.11974 F300 ; 0
G1 X154.5 Y140 E0.11974 F300 ; 0
G1 X154.5 Y138 E0.11974 F300 ; 0
G1 E-1.2 F2100 ; retract
G1 X157.5 Y138 F30000 ; move to start
G1 E1.2 F2100 ; un-retract
G1 X159.5 Y138 E0.11974 F300 ; 9
G1 X159.5 Y140 E0.11974 F300 ; 9
G1 X157.5 Y140 E0.11974 F300 ; 9
G1 X157.5 Y142 E0.11974 F300 ; 9
G1 X159.5 Y142 E0.11974 F300 ; 9
G1 X159.5 Y140 E0.11974 F300 ; 9
G1 E-1.2 F2100 ; retract
G1 Z0.3 F300 ; zHop
;
; FINISH
;
G91 ;Relative positioning
G1 E-2 F2700 ;Retract a bit
G1 E-2 Z0.2 F2400 ;Retract and raise Z
G1 X5 Y5 F3000 ;Wipe out
G1 Z10 ;Raise Z more
G90 ;Absolute positioning

G1 X0 Y200 ;Present print
M106 S0 ;Turn-off fan
M104 S0 ;Turn-off hotend
M140 S0 ;Turn-off bed
M84 X Y E ;Disable all steppers but Z

;