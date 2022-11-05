#Requires AutoHotKey v2.0-beta

/*

A quick skeleton Multi-Paste Gui.
Add the meat sides yourself. 

*/

MPGui := Gui()
MPGui.BackColor := "708090" ; Slate Grey
MPGui.Opt("+LastFound +AlwaysOnTop +Caption +ToolWindow")
;
MPBox1 := MPGui.Add("Edit", "r6 vmyEDIT w135")
   MpBtn_Copy1 := MPGui.Add("Button", "w50 x+10", "Copy").OnEvent("Click", (*) => A_Clipboard := MPBox1.Text)
   MpBtn_Paste1 := MPGui.Add("Button", "w50 y+10", "Paste").OnEvent("Click", (*) => MPBox1.Text := A_Clipboard)      
;
MPBox2 := MPGui.Add("Edit", "r6 vmyEDIT1 w135 x+10 ym-0")
   MpBtn_Copy2 := MPGui.Add("Button", "w50 x+10", "Copy").OnEvent("Click", (*) => A_Clipboard := MPBox2.Text)
   MpBtn_Paste2 := MPGui.Add("Button", "w50 y+10", "Paste").OnEvent("Click", (*) => MPBox2.Text := A_Clipboard)
;
MPBox3 := MPGui.Add("Edit", "r6 vmyEDIT2 w135 x+10 ym-0")
   MpBtn_Copy3 := MPGui.Add("Button", "w50 x+10", "Copy").OnEvent("Click", (*) => A_Clipboard := MPBox3.Text)
   MpBtn_Paste3 := MPGui.Add("Button", "w50 y+10", "Paste").OnEvent("Click", (*) => MPBox3.Text := A_Clipboard)
;
MPBox4 := MPGui.Add("Edit", "r6 vmyEDIT3 w135 x10")
   MpBtn_Copy4 := MPGui.Add("Button", "w50 x+10", "Copy").OnEvent("Click", (*) => A_Clipboard := MPBox4.Text)
   MpBtn_Paste4 := MPGui.Add("Button", "w50 y+10", "Paste").OnEvent("Click", (*) => MPBox4.Text := A_Clipboard)
;
MPBox5 := MPGui.Add("Edit", "r6 vmyEDIT4 w135 x+10 ym+90")
   MpBtn_Copy5 := MPGui.Add("Button", "w50 x+10", "Copy").OnEvent("Click", (*) => A_Clipboard := MPBox5.Text)
   MpBtn_Paste5 := MPGui.Add("Button", "w50 y+10", "Paste").OnEvent("Click", (*) => MPBox5.Text := A_Clipboard)   
;
MPBox6 := MPGui.Add("Edit", "r6 vmyEDIT5 w135 x+10 ym+90")
   MpBtn_Copy6 := MPGui.Add("Button", "w50 x+10", "Copy").OnEvent("Click", (*) => A_Clipboard := MPBox6.Text)
   MpBtn_Paste6 := MPGui.Add("Button", "w50 y+10", "Paste").OnEvent("Click", (*) => MPBox6.Text := A_Clipboard)
;
MPGui.Show("x0 y25")
