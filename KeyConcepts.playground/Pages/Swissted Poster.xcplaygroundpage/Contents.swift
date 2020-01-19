//: [Previous](@previous)
import Cocoa
import PlaygroundSupport

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)
// turn off borders
canvas.drawShapesWithBorders = false
// set the colour to the blue blackground colour
canvas.fillColor = Color(hue: 189, saturation: 100, brightness: 89, alpha: 100)
// draw the rectangle shaped background
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)


// Add the layered blurs
for i in stride (from: -40, through: 308, by: 8){
  canvas.textColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: 12)
canvas.drawText(message: "blur", at: Point(x:10, y: i), size: 200)
}
// Add the black alpha 100 blur on top
  canvas.textColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
canvas.drawText(message: "blur", at: Point(x:10, y: 280), size: 200)

PlaygroundPage.current.liveView = canvas
//: [Next](@next)
