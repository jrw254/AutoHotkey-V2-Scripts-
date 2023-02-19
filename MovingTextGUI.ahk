#Requires AutoHotKey v2.0-beta

/*
    Scrolling Text Mock Up. Needs work but good bare bones. 
*/

; MovingTextGUI(500)

MovingTextGUI(movingText_Speed) {
    SetTimer MoveText, movingText_Speed
tickerGUI := Gui()
tickerGUI.BackColor := "708090" ; Slate Grey

latestAHKVersion := ComObject("WinHttp.WinHttpRequest.5.1")
latestAHKVersion.Open("GET","https://autohotkey.com/download/2.0/version.txt", true)
latestAHKVersion.Send()
latestAHKVersion.WaitForResponse()
    movingText := "The Latest AutoHotkey v2 Version Number is: " . latestAHKVersion.ResponseText
    ;movingText := "At around 2:30 a.m. (CST) on November 4, 2014,[152] an elite squadron of the Federal Police arrested former Iguala mayor Abarca and his wife Pineda at a house in the Tenorios neighborhood in Iztapalapa, Mexico City.[153][A 1] Neither of them resisted arrest.[155] Abarca confessed that he was tired of hiding and that the pressure was too much for him. His wife, on the other hand, showed her disdain for law enforcement.[156][157] The arrest was confirmed through Twitter by the Federal Police spokesperson José Ramón Salinas early that morning.[158] Once in custody, they were taken by law enforcement to the federal installations of SEIDO, Mexico's anti-organized crime investigation agency, for their legal declaration.[159] At the time of their arrest, Abarca and Pineda were among Mexico's most-wanted.[160][161]"

/*
Notes:
    1. Width and Height needs to be calculated better
    2. The example of movingText that is long produces a huge GUI. refer to #1
*/

textXpos := 0
textLength := Strlen(movingText)
    wh := tickerGUI.Add("Text", "w" . textLength*2 . " h" . textLength . " x" . textXpos, movingText )
;ToolTip textLength
MoveText(*) {
    static textXpos := 0
    wh.Move(textXpos + 5)
    textXpos += 5
    if (textXpos >= textLength*2)  ; Check if we've reached the end.
        textXpos := 0  ; If so, loop back to the start. Note: Add a negative nuber to have text start off screen. 
}
    tickerGUI.Show()
}
