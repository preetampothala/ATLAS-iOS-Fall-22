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
//print(convertedNumber!)

var optional:Int?=404
print(optional!)
optional=nil
//print(optional!)

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
print(type(of: convertedNumber))
let myNumber = Int(possibleNumber)
print(type(of: myNumber))

if var myNumber {
    myNumber=245
    print("My number is \(myNumber)")
}
print(myNumber!)
if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}
// Prints "4 < 42 < 100"

if let firstNumber = Int("hello") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}
func makeASandwich() throws {
    // ...
}
let age = -1
//assert(age >= 0, "A person's age can't be less than zero.")
//if age > 10 {
//    print("You can ride the roller-coaster or the ferris wheel.")
//} else if age >= 0 {
//    print("You can ride the ferris wheel.")
//} else {
//    assertionFailure("A person's age can't be less than zero.")
//}

//comparision between boolean values gives a runtime error
//("blue", false) < ("purple", true)

let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)
let a = Int("123")
let b=234;
//let c=(a!=nil ? a!:b);
let defaultColorName = "red"
var userDefinedColorName: String?   // defaults to nil
var colorNameToUse = userDefinedColorName ?? defaultColorName
userDefinedColorName = "green"
colorNameToUse = userDefinedColorName ?? defaultColorName

for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}
let count=5;
for index in 1..<5 {
    print("\(index) times 5 is \(index * 5)")
}
let range = ...5
print(range)
range.contains(-5)
let softWrappedQuotation = """
The White Rabbit put on his spectacles.  "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
"""
print(softWrappedQuotation)

// Empty array -- Array: [type]=[]
var someInts: [Int] = []
print("someInts is of type [Int] with \(someInts.count) items.")
// appending an array
someInts.append(3)
print(someInts)
someInts=[];
print(someInts)
var threeDoubles = Array(repeating: 1.0, count: 3)
var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
var sixDoubles = threeDoubles + anotherThreeDoubles
print(sixDoubles)
var shoppingList: [String] = ["Eggs", "Milk"]
var shopppingList:[Any] = ["Eggs", "Milk", 1]
if shoppingList.isEmpty {
    print("The shopping list is empty.")
} else {
    print("The shopping list isn't empty \(shoppingList)")
}
//appending array using += operator
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
print(shoppingList)
var numbers=[1,2,3,4,5,6]
numbers[3...5]=[8,9];
print(numbers)
numbers.insert(10, at: 4)
print(numbers)
let removednumberfromarray=numbers.remove(at: 0)
numbers.removeLast()
for number in numbers {
    print(number)
}
for (index,num) in numbers.enumerated(){
    print("Number \(index + 1): \(num)")
}
//creating set
var letters = Set<Character>()
letters.insert("P")
letters.insert("Q")
letters.insert("R")
letters;
//creating set using array literal
var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop","Rock"]
if favoriteGenres.isEmpty {
    print("As far as music goes, I'm not picky.")
} else {
    print("I have particular music preferences.")
}

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]
oddDigits.union(evenDigits).sorted()
oddDigits.intersection(evenDigits).sorted()
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]
houseAnimals.isSubset(of: farmAnimals)
var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
airports["YYZ"]
if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("The old value for DUB was \(oldValue).")
}
airports.updateValue("Mumbai International Airport", forKey: "BOM")
airports.updateValue("Apple International Airport", forKey: "APL")
airports.updateValue("Car International Airport", forKey: "CAR")
airports.removeValue(forKey: "BOM")
for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

let airportCodes = [String](airports.keys)
let airportNames=[String](airports.values)

//for-in-loops
let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names{
    print(name)
}

let base = 3
let power = 10
var answer = 1
for _ in 1...power {
    print(power)
    answer *= base
    print(answer,base)
}
let minutes = 3
for tickMark in 0..<minutes {
   print("render the tick mark each minute \(tickMark) times")
}

//let finalSquare = 25
//var board = [Int](repeating: 0, count: finalSquare + 1)
//
//board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
//board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
//
//var square = 0
//var diceRoll = 0
//while square < finalSquare {// roll the dice
//    square += board[square]
//    diceRoll += 1
//
//    if diceRoll == 7 { diceRoll = 1 }// move by the rolled amount
//    square += diceRoll
//
//}
//print("Game over!")


let somePoint = (1, 0)
switch somePoint {
case (0, 0):
    print("\(somePoint) is at the origin")
case (_, 0):
    print("\(somePoint) is on the x-axis")
case (0, _):
    print("\(somePoint) is on the y-axis")
case (-2...2, -2...2):
    print("\(somePoint) is inside the box")
default:
    print("\(somePoint) is outside of the box")
}

let anotherPoint = (0, 2)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y))")
}

let yetAnotherPoint = (-1, 1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}


let numberSymbol: Character = "三"  // Chinese symbol for the number 3
var possibleIntegerValue: Int?
switch numberSymbol {
case "1", "١", "一", "๑":
    possibleIntegerValue = 1
case "2", "٢", "二", "๒":
    possibleIntegerValue = 2
case "3", "٣", "a", "๓":
    possibleIntegerValue = 3
case "4", "٤", "四", "๔":
    possibleIntegerValue = 4
default:
    break
}
if let integerValue = possibleIntegerValue {
    print("The integer value of \(numberSymbol) is \(integerValue).")
} else {
    print("An integer value couldn't be found for \(numberSymbol).")
}

let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer."
}
print(description)

let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
var square = 0
var diceRoll = 0
gameLoop: while square != finalSquare {
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1 }
    switch square + diceRoll {
    case finalSquare:
        // diceRoll will move us to the final square, so the game is over
        break gameLoop
    case square + diceRoll where square + diceRoll>finalSquare:
        // diceRoll will move us beyond the final square, so roll again
//        print(newSquare)
        continue gameLoop
    default:
        // this is a valid move, so find out its effect
        square += diceRoll
        square += board[square]
    }
}
print("Game over!")

//func greet(person:[String: String]){
//    guard let name=person["name"]
//    else {
//
//        return
//    }
//    print("Hello \(name)!")
//
//    guard let location=person["location"]
//    else{
//        print("Hope the weather is great at your location")
//        return
//    }
//    print("Hope the weather is great in \(location)")
//}
//greet(person:["name":"Preetam"])
//greet(person:["name":"Preetam", "location":"Nellore"])

// functions
//syntax
//func functionname(parameter:Type)->Returntype{}
// functionname(argument:"typecontent")

func greeet(person:String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}
greeet(person:"Preetam")


//func greet(person: String, alreadyGreeted: Bool) -> String {
//    if alreadyGreeted {
//        return greetAgain(person: person)
//    } else {
//        return greet(person: person)
//    }
//}
//print(greet(person: "Tim", alreadyGreeted: true))

func printAndCount(string: String) -> Int {
    print(string)
    return string.count
}
func printWithoutCounting(string: String) {
    let returnedval = printAndCount(string: string)
    print(returnedval)
}
printAndCount(string: "hello, world")
printWithoutCounting(string: "hellooo, world")

func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
print("min is \(bounds.min) and max is \(bounds.max) and \(bounds)")
