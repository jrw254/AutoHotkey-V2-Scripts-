/*
AutoHotkey Version:     2.x Beta
Platform:               Win10
Author:                 JRW254/Sabedth(On Reddit)
Script Version:         1.0

Script Function:    A basic GUI w/ International Clocks...
*/

#SingleInstance
Persistent
TraySetIcon("intclock.ico")
/*
    This is just an example. Obvious approach is to just use A_NowUTC vs A_Now.
    However, you can arrive at the time either way. 

    I'm located in CST (Central Time Zone) so you'll need to adjust to your own  
    timezone at the DateAdd anywhere there is A_Now.

    Though I do recommend you just create your own customized one to your liking.
    You should be able to update the guicontrol but for now I just have a 
    dirty reload function on a settimer. 
    There is also a button for the clickers.

    There is nothing professional about this script. Good Luck!
*/

/*
    Tray Menu Section
*/
A_TrayMenu.Delete ; NoStandard in v1
A_TrayMenu.Add("Exit International  Clock", Leave)
A_TrayMenu.SetIcon("Exit International  Clock", "C:\Windows\system32\shell32.dll" , 81, )
A_TrayMenu.Add("Reload the Script", Reloader)
A_TrayMenu.SetIcon("Reload the Script", "C:\Windows\system32\shell32.dll" , 239, )

Leave(*){
    ExitApp
}

Reloader(*){
    Reload
}

Reload_Btn(*)
{
    Reload
}

/*
    Timezone Formats
*/
     ; Top Section
    Current_Time_Zone := FormatTime(, A_Now) ; Set Your Current Time Zone
        CST_TIME := FormatTime(Current_Time_Zone)
    result := DateAdd(A_Now, -2, "hh:mm:ss tt") ; -2 for Pacific Time from CST
        PST_TIME := FormatTime(result)
    result := DateAdd(A_Now, -1, "hh:mm:ss tt") ; -1 for Mountain Time from CST
        MNT_TIME := FormatTime(result)
    result := DateAdd(A_Now, +1, "hh:mm:ss tt") ; +1 for Eastern Time from CST
        EST_TIME := FormatTime(result) 
    ; Middle Section
    UTC_Time_Zone := A_NowUTC ; Set like this for UTC 
        UTC_NOW := FormatTime(UTC_Time_Zone)
    utc_Result := DateAdd(A_NowUTC, +1, "hh:mm:ss tt") ; +1 for UK Time from UTC    
        UK_TIME := FormatTime(utc_Result)
    utc_Result := DateAdd(A_NowUTC, +2, "hh:mm:ss tt") ; +2 for Berlin Time from UTC
        GMT2_TIME := FormatTime(utc_Result)
    utc_Result := DateAdd(A_NowUTC, +3, "hh:mm:ss tt") ; +3 for Moscow Time from UTC
        GMT3_TIME := FormatTime(utc_Result)
    ; Bottom Section 
    utc_Result := DateAdd(A_NowUTC, -4, "hh:mm:ss tt") ; -4 for Atlantic Time from UTC
        AST_TIME := FormatTime(utc_Result)
    cst_Result := DateAdd(A_Now, +15, "hh:mm:ss tt") ; +15 for Japan Time from CST Time Zone
        JPN_TIME := FormatTime(cst_Result)


/*
    GUI Function & HotKeys
*/

start_gui := gui_func()
Home::  start_gui.show("AutoSize")
Esc:: start_gui.hide() 


gui_func() {
A_Gui := Gui(, "International Clock")
A_Gui.Opt("+AlwaysOnTop +Owner")
A_Gui.BackColor := "3B3C36"

A_btn := A_Gui.Add("Button",, "Reload")
A_btn.OnEvent("Click", Reload_Btn)

A_Gui.SetFont("s11 Underline")
A_Gui.Add("Text"," x10 y55 r1", CST_TIME)
A_Gui.Add("Text","c1DACD6 x+10", "(CST)")

A_Gui.Add("Text"," x10 y80 r1", UTC_NOW)
A_Gui.Add("Text","c980036 x+10", "(UTC)")

A_Gui.Add("Text"," x10 y105 r1", PST_TIME)
A_Gui.Add("Text","cFFA500 x+10", "(PST)")

A_Gui.Add("Text"," x10 y130 r1", MNT_TIME)
A_Gui.Add("Text","c996666 x+10", "(MNT)")

A_Gui.Add("Text"," x10 y155 r1", EST_TIME)
A_Gui.Add("Text","c008040 x+10", "(EST)")

A_Gui.Add("Text","x10 y180 r1","                                                                        ") ; creates a spacer with a visible line

A_Gui.Add("Text"," x10 y205 r1", UK_TIME)
A_Gui.Add("Text","c1DACD6 x+10", "(UK)")

A_Gui.Add("Text"," x10 y230 r1", GMT2_TIME)
A_Gui.Add("Text","c4D0040 x+10", "(Berlin)")

A_Gui.Add("Text"," x10 y255 r1", GMT3_TIME)
A_Gui.Add("Text","c980036 x+10", "(Moscow)")

A_Gui.Add("Text","x10 y280 r1","                                                                        ") ; creates a spacer with a visible line

A_Gui.Add("Text"," x10 y305 r1", AST_TIME)
A_Gui.Add("Text","cFFA500 x+10", "(AST)")

A_Gui.Add("Text"," x10 y330 r1", JPN_TIME)
A_Gui.Add("Text","cFFB7C5 x+10", "(JPN)")


;A_Gui.Show("AutoSize Minimize") ; Auto minimize on startup
return A_Gui

}




SetTimer Reload_Btn, 30000 ; Reloads the script every 30 seconds
