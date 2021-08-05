/*
AutoHotkey Version:     2.x Beta
Platform:               Win10
Author:                 JRW254/Sabedth(On Reddit)
Script Version:         1.0

Script Function:    CapsLock Copy in V2
*/

#SingleInstance
Persistent

/*
    Place your browser info below
*/

GroupAdd "Browsers", "ahk_class Chrome_WidgetWin_1"     ; Chrome or Brave
GroupAdd "Browsers", "ahk_class IEFrame "               ; Internet Explorer
GroupAdd "Browsers", "ahk_class MozillaWindowClass"     ; FireFox
GroupAdd "Browsers", "ahk_class ApplicationFrameWindow" ; Edge
Capslock::
{
    SendInput "^c"
    Sleep 500
    SendInput "^t"
    sleep 150
    sendInput "^v"
    Sleep 150
    SendInput "{enter}"
    GroupActivate "Browsers" ; Activate last
}
