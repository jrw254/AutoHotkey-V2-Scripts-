/*
    Version: 1.0.0
    Date Created: Feb. 18th, 2023
    Chnages:
        March 10th, 2023 -- 1. Added Version Number ( 1.0.0 / prev. 0.1.0 ), date created, changes section
                            2. Moved latestAHKVersion outside function. Serves as an example. 
                            3. Some changes made to code: Added arguments. Slightly better calculation. 
                            4. Some minor changes style and structure of doc. 
    
*/

/*
    Scrolling Text Mock Up. Needs work but good bare bones. 
*/

#Requires AutoHotKey v2.0-beta

; 0:: ExitApp

latestAHKVersion := ComObject("WinHttp.WinHttpRequest.5.1")
latestAHKVersion.Open("GET","https://autohotkey.com/download/2.0/version.txt", true)
latestAHKVersion.Send()
latestAHKVersion.WaitForResponse()
    movingText := "The Latest AutoHotkey v2 Version Number is: " . latestAHKVersion.ResponseText


MovingTextGUI(movingText, 500, 296, 1050)

;==============================;
        Function Below
;==============================;
MovingTextGUI(input_txt, movingText_Speed, xPOS, yPOS) {
    SetTimer MoveText, movingText_Speed

    movingText := input_txt
    textLength := Strlen(movingText)

    tickerGUI := Gui()
        tickerGUI.Opt("-Caption")
        tickerGUI.BackColor := "708090" ; Slate Grey
            width := textLength*10  ; Calculate width based on string length
            height := "15"    ; Calculate height based on string length ; Need a way to proper calc the textLength to height
    
    textXpos := 0
        wh := tickerGUI.Add("Text", "w" width . " h" height . " x" textXpos, movingText )

MoveText(*) {
    static textXpos := 0

    wh.Move(textXpos + 5)
        textXpos += 5
    if (textXpos >= width)  ; Check if we've reached the end.
            textXpos := 0  ; If so, loop back to the start. Note: Add a negative number to have text start off screen. 
}
    tickerGUI.Show("x" xPOS . "y" yPOS)
}
