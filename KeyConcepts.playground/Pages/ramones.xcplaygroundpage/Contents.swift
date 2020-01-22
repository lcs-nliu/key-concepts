//: [Previous](@previous)
import Cocoa
import PlaygroundSupport

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// fill in the background
canvas.fillColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
canvas.drawRectangle(at: Point (x:0, y:0), width: 400, height: 600)

// set the yellow color
canvas.lineColor = Color(hue: 40, saturation: 100, brightness: 100, alpha: 100)

// draw the yellow lines with a loop
for position in stride (from: 0, to: 315 , by: 35){
    // set the start position
    let start = position - 330

    // set the end position
    let end = position + 120

    // draw the lines
    canvas.drawLine(from: Point(x: start, y: 700), to: Point(x: end, y: 200), lineWidth: 15)
}

// set the blue colour
canvas.lineColor = Color(hue: 193, saturation: 15, brightness: 82, alpha: 100)

// draw the blue lines with a loop
for position in stride (from: 0, to: 315 , by: 35){
   
    // set the start position
    let start = position - 50

    // set the end position
    let end = position + 400

    // draw the lines
    canvas.drawLine(from: Point(x: start, y: 700), to: Point(x: end, y: 200), lineWidth: 15)
}

// draw the circle with no fill so it covers the edges of the lines
canvas.drawShapesWithFill = false
canvas.drawEllipse(at: Point (x:200, y:400), width: 500, height: 500, borderWidth: 100)


// write the title
canvas.textColor = Color(hue: 193, saturation: 15, brightness: 82, alpha: 100)
canvas.drawText(message: "ramones", at: Point(x:10, y:120), size: 60)

// write the paragraph text
canvas.drawText(message: "with special guests" + "\n" + "the vandals" + "\n" + "and screaming sirens", at: Point(x:15, y: 25), size: 10)
canvas.drawText(message: "friday" + "\n" + "september 19 1986" + "\n" + "no age limit", at: Point(x:160 , y: 25), size: 10)
canvas.drawText(message: "fender's ballroom" + "\n" + "521 east first street" + "\n" + "long beach, ca", at: Point(x:280 , y: 25), size: 10)

PlaygroundPage.current.liveView = canvas
//: [Next](@next)
