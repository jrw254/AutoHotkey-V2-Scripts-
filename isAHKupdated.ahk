/*
AutoHotkey Version:     2.0-beta*
Platform:               Win10 19042
Author:                 JRW254
Script Version:         1.0
Script Function:    Check to see if you have latest version and if not download the newst version
*/



filePath := "" ; put your destination path here
isAHKupdated := ComObject("WinHttp.WinHttpRequest.5.1")
isAHKupdated.Open("GET","https://autohotkey.com/download/2.0/version.txt", true)
isAHKupdated.Send()
isAHKupdated.WaitForResponse()
    Outvar := isAHKupdated.ResponseText
        If (Outvar != A_AhkVersion) { ; == to check for and != to check against
            MsgBox "Current Version Available is: " Outvar "`nVersion Installed Now: " A_AhkVersion
             Download "https://www.autohotkey.com/download/2.0/AutoHotkey_" . Outvar . ".zip", filePath . "AutoHotkey_" . Outvar . ".zip"
            }
        If (Outvar == A_AhkVersion) {
            MsgBox "You are up to date: " Outvar
            }
