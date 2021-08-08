/*
AutoHotkey Version:     2.x Beta
Platform:               Win10
Author:                 JRW254/Sabedth(On Reddit)
Script Version:         1.0

Script Function:    Get Monitor Information: Number, Name and Working Area in v2

Example:          
Home::
{
	Mon_Count := SysGet(80) ; Count the number of monitors
	Mon_Name := MonitorGetName() ; Get name of the monitor. Add monitor number for each monitor or build out each variable per monitor. 
	Mon_Get_Count := MonitorGetCount() ; Claims to be slightly better than SysGet(80)

	; Get the working window area below

	rect_Mon_Name := MonitorGetWorkArea(Mon_Name, &l, &t, &r, &b) ; Get the working area and Monito name
	Msgbox "Number of Monitors: " Mon_Count "`nName of Monitor(s): " Mon_Name "`nAlso # of Monitors: " Mon_Get_Count ; Display the info
	MsgBox "Name of Display: " Mon_Name "`nLeft: " l "`nTop: " t "`n" r " x " b
}  
*/

	Mon_Count := SysGet(80) ; Count the number of monitors
	Mon_Name := MonitorGetName() ; Get name of the monitor. Add monitor number for each monitor or build out each variable per monitor. 
	Mon_Get_Count := MonitorGetCount() ; Claims to be slightly better than SysGet(80)

	; Get the working window area below

	rect_Mon_Name := MonitorGetWorkArea(Mon_Name, &l, &t, &r, &b) ; Get the working area and Monito name
	Msgbox "Number of Monitors: " Mon_Count "`nName of Monitor(s): " Mon_Name "`nAlso # of Monitors: " Mon_Get_Count ; Display the info
	MsgBox "Name of Display: " Mon_Name "`nLeft: " l "`nTop: " t "`n" r " x " b
