#Requires AutoHotKey v2.0-beta

/*

This is just the GUI skeleton for a DDL when I VM into a machine using Virtual Desktop.

*/

ADGui := Gui()
ADGui.BackColor := "708090" ; Slate Grey
ADGui.Opt("+LastFound +AlwaysOnTop -Caption +ToolWindow")
DLL := ADGui.Add("DropDownList", "vColorChange x6 y2 Choose1", ["------"
,"VD 1"
,"VD 2"
,"VD 3"
,"VD 4"
,"VD 5"
,"VD 6"]) 
ADGui.show("x295 y1050")

DLL.OnEvent("Change", Dll_Change)
Dll_Change(*){
   Switch DLL.Value
   {
      Case "2": 
         GoToDesktopNumber(0) ; VD 1
      Case "3": 
         GoToDesktopNumber(1) ; VD 2
      Case "4":
         GoToDesktopNumber(2) ; VD 3
      Case "5":
         GoToDesktopNumber(3) ; VD 4
      Case "6":
         GoToDesktopNumber(4) ; VD 5
      Case "7":
         GoToDesktopNumber(5) ; VD 6
   }
}

hVirtualDesktopAccessor := DllCall("LoadLibrary", "Str", ".\VirtualDesktopAccessor.dll", "Ptr") 
GoToDesktopNumberProc := DllCall("GetProcAddress", "Ptr", hVirtualDesktopAccessor, "AStr", "GoToDesktopNumber", "Ptr")

GoToDesktopNumber(num) {
    return DllCall(GoToDesktopNumberProc, "Int", num)
}
