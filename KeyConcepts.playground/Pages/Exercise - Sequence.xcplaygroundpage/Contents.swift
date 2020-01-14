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
// draw grey rectangle that fills background
canvas.fillColor = Color(hue: 219, saturation: 1, brightness: 82, alpha: 100)
canvas.drawShapesWithBorders = false
canvas.drawRectangle(at: Point(x: 0, y: 0), width: canvas.width, height: canvas.height)

// draw big red circle
canvas.fillColor = Color(hue: 4, saturation: 78, brightness: 92, alpha: 100)
canvas.drawEllipse(at: Point(x:200, y:200), width: 350, height: 350)

// draw grey circle that is inside the red circle
canvas.fillColor = Color(hue: 219, saturation: 1, brightness: 82, alpha: 100)
canvas.drawEllipse(at: Point(x:200, y:200), width: 175, height: 175)

canvas.borderColor = Color(hue: 205, saturation: 74, brightness: 77, alpha: 75)
canvas.drawShapesWithFill = false
canvas.drawShapesWithBorders = true
canvas.drawEllipse(at: Point(x:350, y:200), width: 275, height: 275, borderWidth: 100)

canvas.textColor = Color (hue: 0, saturation: 0, brightness: 0, alpha: 100)
canvas.drawText(message: "the jesus", at: Point(x: 15, y:445), size: 40, kerning: 0.0)
canvas.drawText(message: "and mary chain", at: Point(x: 15, y:400), size: 40, kerning: 0.0)
//// COLORS
//let grey = Color(hue: 219, saturation: 1, brightness: 82, alpha: 100)
//let lightBlue = Color(hue: 205, saturation: 74, brightness: 77, alpha: 75)
//let lightRed = Color(hue: 4, saturation: 78, brightness: 92, alpha: 100)
//
//// HINT: Remember that all shapes have a fill and a border.
////       You can turn off the fill or border if desired.
//
//// No border, has a fill
//canvas.drawShapesWithBorders = false
//canvas.drawShapesWithFill = true
//canvas.drawEllipse(at: Point(x: 100, y: 100), width: 50, height: 75)
//
//// Has a border, no fill
//canvas.drawShapesWithBorders = true
//canvas.drawShapesWithFill = false
//canvas.drawEllipse(at: Point(x: 200, y: 100), width: 50, height: 75)


/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

