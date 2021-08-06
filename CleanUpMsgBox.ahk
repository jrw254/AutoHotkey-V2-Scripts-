/*
AutoHotkey Version:     2.x Beta
Platform:               Win10
Author:                 JRW254/Sabedth(On Reddit)
Script Version:         1.0

Script Function:    Clean Up MsgBox by removing the extra bits. 
*/

OnClipboardChange Clean_Up_MsgBox


Clean_Up_MsgBox(*) {
	if WinActive("ahk_class #32770")
		A_Clipboard := RegExReplace(A_Clipboard, "s)\v*---------------------------.*?---------------------------\v*")
}
