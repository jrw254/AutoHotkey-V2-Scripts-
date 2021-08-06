/*
AutoHotkey Version:     2.x Beta
Platform:               Win10
Author:                 JRW254/Sabedth(On Reddit)
Script Version:         1.0

Script Function:    Google Search Box in v2
*/

#SingleInstance
Persistent

A_TrayMenu.Delete ; NoStandard in v1
A_TrayMenu.Add("Exit", Exit_App)
A_TrayMenu.Add("")
A_TrayMenu.Add("Reload", Reloader)

Search_Gui := Gui(, "Search_Gui GUI")
Search_Gui.Opt("+AlwaysOnTop -Caption +ToolWindow +Owner")
Search_Gui.BackColor := "0x191919"
Search_Gui.SetFont("s10", "Arial",)

; Create the edit box and set the name of the object

Search_Gui.Add("Edit", "vSearch_Field", "Enter what you want to search here")
Search_Gui.Add("Button", "Default", "Click Here").OnEvent("Click", Search_Func) ; Pressing enter also works

; Add a hotkey here to activate by Keypress
Search_Gui.Show()


/*
	Functions
*/

Exit_App(*) {
	ExitApp
}

Reloader(*) {
	Reload
}

Search_Func(*) {
	Submit_Results := Search_Gui.Submit() ; Save the contents of named controls into an object.
	Run "http://www.google.com/search?q=" . Submit_Results.Search_Field
}
