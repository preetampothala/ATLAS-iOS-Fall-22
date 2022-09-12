import UIKit

var greeting:String = "Hello, playground"
greeting = "My first line of swift code"

print(greeting)

var red, green, blue: Double
red=5
green=4.8

print(red,green, terminator: " ")
print(green)
print(red)
print("The current value of friendlyWelcome is \(greeting)")
//comment
let three=3
let pointOneFourOneFiveNine = 0.14159
let new = Double(three)+pointOneFourOneFiveNine
print(new)

let integerPi=Int(new)
print(integerPi)
typealias integer=Int

let newint: integer
newint = 3
print(newint)
typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.max
print(maxAmplitudeFound)

let orangesAreOrange = true
let turnipsAreDelicious = false

if turnipsAreDelicious {
    print("Mmm, tasty turnips!")
} else {
    print("Eww, turnips are horrible.")
}

//tuples
let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
print("The status message is \(statusMessage)")

let http200Status = (statusCode: 200, description: "OK")
print(http200Status.0)

//optionals
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
print(convertedNumber)

var optional:Int?=404
print(optional!)
optional=nil
print(optional)

if convertedNumber != nil{
    print("convertedNumber contains some integer value.")
}
if convertedNumber != nil {
    print("convertedNumber has an integer value of \(convertedNumber!).")
}

if let actualNumber = Int(possibleNumber) {
    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("The string \"\(possibleNumber)\" couldn't be converted to an integer")
}
