/*

  Can't drop an image in Discord cause you new? Too lazy to use anything else to drop a link to get arond that limitation?
  Then welcome to captureDialogBox() Because why wouldn't we do things the long way around. 
  
*/



captureDialogBox() {
    If WinExist("ahk_class #32770") {
        outVar := WinGetText("ahk_class #32770")
            MsgBox "You Just copied the contents of the Dialog box. `nAKA the error box."
        A_Clipboard := outVar
    } else {
        If !WinExist("ahk_class #32770") {
            MsgBox "No Dialog window is present.`nCause and error with an AHK script to see."
        }

    }
}
