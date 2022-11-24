#Requires AutoHotKey v2.0-

/*

Just a mock up function for centering windows

Examples:
1::CenterWindow("Windows (C:)", "0")
2::CenterWindow("Windows (C:)", "1")
3::
{
   Static Toggle := 0
   Toggle := !Toggle
   Send(Toggle ? CenterWindow("Windows (C:)", "0") : CenterWindow("Windows (C:)", "1"))
}


*/


CenterWindow(TitleOf, MB)
{
   If (MB = 0) 
   {
   WinGetPos &X, &Y, &W, &H, TitleOf
      IniWrite TitleOf, "centerwindows.ini", "Coords", "WinTitle"
      IniWrite X, "centerwindows.ini", "Coords", "X_Var"
      IniWrite Y, "centerwindows.ini", "Coords", "Y_Var"
      IniWrite W, "centerwindows.ini", "Coords", "Width_Var"
      IniWrite H, "centerwindows.ini", "Coords", "height_Var" 
   WinMove (A_ScreenWidth/2)-(W/2), (A_ScreenHeight/2)-(H/2),,, TitleOf
      WinActivate TitleOf
   }
   else if (MB = 1) 
   {
      Xpar := IniRead("centerwindows.ini", "Coords", "X_Var") 
      Ypar := IniRead("centerwindows.ini", "Coords", "Y_Var")
      Wpar := IniRead("centerwindows.ini", "Coords", "Width_Var")
      Hpar := IniRead("centerwindows.ini", "Coords", "Height_Var")
         WinMove Xpar, Ypar, Wpar, Hpar, TitleOf
   }

}
