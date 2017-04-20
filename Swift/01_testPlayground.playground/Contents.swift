//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var str2: String = "Strongly Typed"

print(str2)

//var str2 = 43

var mutableDictionary = ["one": 1]

mutableDictionary["two"] = 2


//Swift Fund. I ///
var type: String = "Rectangle"
var description: String = "A quadrilateral with four right angles"

var width: Int = 5
var height: Double = 10.5
var area = Double(width) * height

height+=1
width+=1

area = Double(width) * height
// Note how you can "interpolate" variables into Strings using the following syntax
print("The shape is a \(type) or \(description) with an area of \(area)")

//Swift Fund. I ///

//Conditionals
var numberOfRings = 3

if(numberOfRings > 3)
{
    print("Welcome")
}
else
{
    print("Nope")
}

//Conditionals

/////

print("maximum number of int is \(Int32.max)")
print("minimum number of int is \(Int32.min)")

///


///loops

for i in 1...3
{
    print(i)
}

for i in 1..<3
{
    print(i)
}


///loops


//Swift Fund. II

//First, create a loop (either for or while) that prints all of the values from 1-255 
//Next, create a program that prints all of the values from 1-100 that are divisible by 3 or 5 but not both 
//Now modify that program to print "Fizz" when the number is divisible by 3 
//and "Buzz" when the number is divisible by 5 
//as well as "FizzBuzz" when the number is divisible by both!

for i in 1...255
{
    print(i)
}

for i in 1...100
{
    if((i % 3 == 0 && i % 5 != 0) || (i % 3 != 0 && i % 5 == 0))
    {
        print(i)
    }
}

for i in 1...100
{
    if(i % 3 == 0)
    {
        print("Fizz")
    }
    
    if(i % 5 == 0)
    {
        print("buzz")
    }
    
    if((i % 3 == 0) && (i % 5 == 0))
    {
        print("FizzBuzz")
    }
}


//Swift Fund. II



//Swift Fund. III


//Write a program that adds the numbers 1-255 to an array
//Swap two random values in the array
//Hint: you can use the arc4random_uniform(UInt32) function to get a random number from 0 to the number passed in. The arc4random_uniform function takes in one parameter that is of the UInt32 type and returns a random number that is of the UInt32 type. How can you deal with this using your knowledge of types?
//Now write the code that swaps random values 100 times (You've created a "Shuffle"!)
//Remove the value "42" from the array and
//Print "We found the answer to the Ultimate Question of Life,
//the Universe, and Everything at index __" and print the index
//of where "42" was before you removed it.

var arrayOfInts: [Int] = [Int]()

for i in 1...255
{
    arrayOfInts.append(i)
}

var idx1 = Int(arc4random_uniform(UInt32(arrayOfInts.count)))
var idx2 = Int(arc4random_uniform(UInt32(arrayOfInts.count)))

print("The first random spot is index \(idx1) with value \(arrayOfInts[idx1])")
print("The second random spot is index \(idx2) with value \(arrayOfInts[idx2])")

var temp = arrayOfInts[idx1]
arrayOfInts[idx1] = arrayOfInts[idx2]
arrayOfInts[idx2] = temp

print("The first random spot is now index \(idx1) with value \(arrayOfInts[idx1])")
print("The second random spot is now index \(idx2) with value \(arrayOfInts[idx2])")

//shuffle
for i in 1...100
{
    //grabs two random indexes
    var idx1 = Int(arc4random_uniform(UInt32(arrayOfInts.count)))
    var idx2 = Int(arc4random_uniform(UInt32(arrayOfInts.count)))
    
    //swaps both
    var temp = arrayOfInts[idx1]
    arrayOfInts[idx1] = arrayOfInts[idx2]
    arrayOfInts[idx2] = temp
}

print("After shuffle, the first random spot is index \(idx1) with value \(arrayOfInts[idx1])")
print("After shuffle, the second random spot is now index \(idx2) with value \(arrayOfInts[idx2])")


//find 42
var indexOf42: Int = 0

for i in 0..<arrayOfInts.count
{
    
    if(arrayOfInts[i] == 42)
    {
        indexOf42 = i
    }
}

arrayOfInts.removeAtIndex(indexOf42)

print("The index of value 42 is at \(indexOf42)")



//Swift Fund. III

////

var name : String = "Bob"
var pet : String?

print(pet)

var present: String? = "sam" //if set to nothing the next print function will not run
// If we can let "unwrappedPresent" equal "present" meaning there is something inside of present then go on to do something with "unwrappedPresent"
if let unwrappedPresent = present {
    print("OMG THANK YOU FOR THE \(unwrappedPresent)")
}



///


///Dictionary 

var myDict1: [String: Int]

var myDict2: [String: Int] = [String: Int]()

var myDict3 = [String: Int]()

var dictionary =
[
    "Kobe" : 24,
    "LeBron" : 23,
    "Durant" : 35

]

print(dictionary["Kobe"])

var jerseyNumber = dictionary["Kobe"]
print(jerseyNumber)

var jerseyNumber2 = dictionary["Kobe"]!
print(jerseyNumber2)

if let jerseyNumber = dictionary["Kobe"] {
    print(jerseyNumber)
}


//Dictionary

//Suits//


let suits = ["Clubs", "Diamonds", "Hearts", "Spades"]
let cards = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
var deckOfCards = [String: [Int]]()

for i in 0..<suits.count
{
    deckOfCards[suits[i]] = cards
}

print(deckOfCards["Clubs"])
print(deckOfCards)

//Suits//


//Functions //

func sayHello()
{
    print("Hello Swift")
}

sayHello()

func sayHello(name: String) {
    print("Hello, \(name), how are you doing today?")
}

sayHello("Sam")

// Functions //



//Head or Tails
//Create a function tossCoin() -> String
//Have this function print "Tossing a Coin!" Next have the function randomly pick either "Heads" or "Tails" Have the function print the result 
//Finally, have the function return the result
//Now create another function tossMultipleCoins(Int) -> Double
//Have this function call the tossCoin function multiple times based on the Integer input Have the function return a Double that reflects the ratio of head toss to total toss

func tossCoin() -> String
{
    
    print("Tossing a Coin ...")
    var coin1: Int = Int(arc4random_uniform(UInt32(2)))
    
    if(coin1 == 0) {return "Heads"}
    else {return "Tails"}
    
}

func tossMultipleCoins(number: Int) -> Double
{
    var heads: Double = 0
    var tails: Double = 0
    for _ in 1...number
    {
        if(tossCoin() == "Heads") {heads+=1}
        else if(tossCoin() == "Tails") {tails += 1}
    }
    
    return heads/tails
}

tossCoin()

tossMultipleCoins(9)


//Head or Tails//


//Classes and Structs
class Person {
    var fullName: String
    init(name: String) {
        self.fullName = name
    }
    func introduce() {
        print("Hi my name is \(self.fullName)")
    }
}
var j = Person(name: "Ketul Patel") // Initialize a Person object and assign it to the j variable
var k = j                           // Create a k variable and set its value to be the j variable
// (remember classes are reference types)
j.introduce()                       // Prints "Hi my name is Ketul Patel"
k.fullName = "Ketul J Patel"        // We are changing the name through the k variable.
j.introduce()

k.fullName
j.fullName




struct Rectangle {
    var width: Int
    var height: Int
}
var square1 = Rectangle(width: 10, height: 10)
var square2 = square1                         // Here the val inside square 1 (an instance of Rectangle)
// is copied and passed rather than just pointed to.
print("square1's width: \(square1.width), square2's width \(square2.width)")
// They are the same because square2 is a copy of square1
square2.width = 20                            // This only changes square2 because there are
// 2 separate instances of rectangle in memory
square2.height = 20
print("square1's width: \(square1.width), square2's width \(square2.width)")
// They are different now: changing square2 changed a
// completely separate instance from square1.


//Classes and Structs




























