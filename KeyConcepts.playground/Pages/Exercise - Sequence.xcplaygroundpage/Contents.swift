//: [Previous](@previous) / [Next](@next)
//: # Exercise - Sequence
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 ## Exercise
 
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image (the underlying image, not the planning grid):
 
 ![tjamc-no-grid.png](tjamc-no-grid.png "The Jesus and Mary Chain")
 ![tjamc-with-grid.png](tjamc-with-grid.png "The Jesus and Mary Chain")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 
 You can use the **Digital Color Meter** app (already installed on your Mac) to find specific colours as RGB (red-green-blue) codes.
 
 You [can use this site](http://www.workwithcolor.com/color-converter-01.htm) to convert colours to HSB to use with the Canvas class.
 
 Or, if you wish, you may use the color constants created below.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let grey = Color(hue: 219, saturation: 1, brightness: 82, alpha: 100)
let lightBlue = Color(hue: 205, saturation: 74, brightness: 77, alpha: 75)
let lightRed = Color(hue: 4, saturation: 78, brightness: 92, alpha: 100)


canvas.fillColor = grey
canvas.drawRectangle(at: Point(x:0, y:0), width: 400, height: 600)

canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
canvas.borderColor = lightRed
canvas.drawEllipse(at: Point(x:200 , y:200), width: 270, height: 270, borderWidth: 100)

canvas.borderColor = lightBlue
canvas.drawEllipse(at: Point(x:350, y:200), width:270 , height: 270, borderWidth: 100)

canvas.drawText(message: "friday", at: Point(x:15, y:570), size: 10)
canvas.drawText(message: "december 4 1987", at: Point(x:15, y:555), size: 10)
canvas.drawText(message: "8 pm show", at: Point(x:15, y:540), size: 10)

canvas.drawText(message: "with", at: Point(x:120, y:570), size: 10)
canvas.drawText(message: "social distortion", at: Point(x:120, y:555), size: 10)
canvas.drawText(message: "and opal", at: Point(x:120, y:540), size: 10)

canvas.drawText(message: "hollywood palladium", at: Point(x:275, y:570), size: 10)
canvas.drawText(message: "6215 sunset blvd.", at: Point(x:275, y:555), size: 10)
canvas.drawText(message: "los angeles, california", at: Point(x:275, y:540), size: 10)

// HINT: Remember that all shapes have a fill and a border.
//       You can turn off the fill or border if desired.

// No border, has a fill
//canvas.drawShapesWithBorders = false
//canvas.drawShapesWithFill = true
//canvas.drawEllipse(at: Point(x: 100, y: 100), width: 50, height: 75)
//
// Has a border, no fill
//canvas.drawShapesWithBorders = true
//canvas.drawShapesWithFill = false
//canvas.drawEllipse(at: Point(x: 200, y: 100), width: 50, height: 75)







for j in 1...7 {
    canvas.drawLine(from: Point(x:j*50, y:0), to: Point(x:j*50, y: 600))
}

for m in 1...11 {
    canvas.drawLine(from: Point(x:0,y:m*50), to: Point(x:400,y:m*50))
}






/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas







