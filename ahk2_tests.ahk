
/* Create a GUI with a field that is submitable */
Robot := Gui()
Robot.Opt("+AlwaysOnTop -Caption +ToolWindow")
Robot.BackColor := "708090" ; Slate Grey
Robot.SetFont(, "Comic Sans MS")
Robot.Add("Text",, "Type anything in field. Press submit.")
Robot.Add("Edit", "r1 vEDIT w135", "Text inside Human")
Robot.Add("Text",, "Version: " A_AhkVersion "  Press Zero to exit.")

Robot.Show "w220 h80"

Button := Robot.Add("Button", "default xm+140 ym+19", "Submit")
	Button.OnEvent("Click", DoTing)

DoTing(*) {
	Saved := Robot.Submit()
		MsgBox Saved.EDIT
		; Robot.Show "w220 h80" ; If you want the GUI to reappear.
}

/* HotKey(s) */
0::
{
    ExitApp 
}
