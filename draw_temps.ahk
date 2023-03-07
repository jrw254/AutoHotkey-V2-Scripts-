#Requires AutoHotKey v2.0- ; This is all yu need for all v2 versions to run


/*

  Just some random function for drawing. Consider these templates. 

*/

DrawTriangle(Length_of, Rotation) {
    CoordMode "Mouse", "Window" 
    MouseGetPos &currentX, &currentY

    local pi := 3.14

    angle := Rotation * (pi/180)   ; Convert degrees to radians
    nextX := currentX + Length_of * cos(angle)
    nextY := currentY - Length_of * sin(angle)

    MouseClickDrag "L", currentX, currentY, nextX, nextY ; Dwn to Up
    MouseClickDrag "L", nextX, nexty, second_next_x := nextX + Length_of * cos(angle + pi/3)
                        , Second_next_y := nextY - Length_of * sin(angle + pi/3) ; Left to Right
    MouseClickDrag "L", second_next_x, Second_next_y, currentX, currentY ; Right to left 
}


DrawSquare(Length_of) {
    CoordMode "Mouse", "Window" 
    MouseGetPos &currentX, &currentY

    MouseClickDrag "L", currentX, currentY, nextx := currentX, nexty := currentY - Length_of ; Dwn to Up
    ;MouseClickDrag "L", nextX, nexty, second_next_x := nextx - 100, Second_next_y := nexty ; Right to Left
    MouseClickDrag "L", nextX, nexty, second_next_x := nextx + Length_of, Second_next_y := nexty ; Left to Right
    MouseClickDrag "L", second_next_x, Second_next_y, third_next_x := second_next_x, third_next_y := Second_next_y + Length_of ; Up to dwn
    MouseClickDrag "L", third_next_x, third_next_y, third_next_x - Length_of, third_next_y ; Right to left 
}


three_lines() {
    Static lastX := 0, lastY := 0
    MouseGetPos &currentX, &currentY

if ((currentX != lastX) and (currentY != lastY))
    {
        offsetX := Random(-50,20)
        offsetY := Random(-20,10)

        MouseClickDrag("L", 150, 300, currentX + offsetX, currentY + offsetY,)
        MouseClickDrag("L", 100, 250, currentX + offsetX, currentY + offsetY,)
        MouseClickDrag("L", 50, 200, currentX + offsetX, currentY + offsetY,)

        lastX := currentX
        lastY := currentY
    }
    return
}
