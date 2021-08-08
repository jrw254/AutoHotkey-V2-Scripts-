/*
AutoHotkey Version:     2.x Beta
Platform:               Win10
Author:                 JRW254/Sabedth(On Reddit)
Script Version:         1.0

Script Function:    TrayWindow ControlClick's

Example:            Home:: 
                    {
                      DetectHiddenWindows True
                      ControlClick "TrayButton2", "ahk_class Shell_TrayWnd" ; Open the Notification on tray
                    }
*/



DetectHiddenWindows True
ControlClick "TrayClockWClass1", "ahk_class Shell_TrayWnd" ; Open the clock on the tray
ControlClick "Button2", "ahk_class Shell_TrayWnd" ; Open 'Show Hidden Icons' on tray
ControlClick "ToolbarWindow323", "ahk_class Shell_TrayWnd" ; Open Network on tray
ControlClick "TrayButton2", "ahk_class Shell_TrayWnd" ; Open the Notification on tray
ControlClick "DynamicContent11", "ahk_class Shell_TrayWnd" ; Open News and Interest on tray












