//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//First, create a class called Animal
//
//Give Animal a property "name" Give Animal a property "health" with a default value of 100 Give Animal an initialization that takes in a name and sets the name property appropriately 
//Give the animal a displayHealth method
//Next, create a subclass of Animal called Cat
//
//Give the Cat a method "growl" that prints to the screen "Rawr!"
//Modify the Cat's health to be 150 
//Give the Cat a method "run" that prints to the screen "Running" and deducts 10 health


class Animal
{
    var name: String
    
    var health: Int = 100
    
    init(name: String)
    {
        self.name = name
    }
    
    func displayHealth()
    {
        print("Health is currently: \(self.health)")
    }

}

class Cat : Animal
{
    override init(name: String)
    {
        super.init(name: name)
        self.health = 150
        
    }
    
    func growl()
    {
        print("Rawr")
    }
    
    func run()
    {
        print("Running ... ")
        health -= 10
    }
}

var animal: Animal = Animal(name: "Frog")

var cat1: Cat = Cat(name: "Tom")

print("\(animal.name) .. \(animal.health)")

print("\(cat1.name) .. \(cat1.health)")
cat1.run()
print("\(cat1.name) .. \(cat1.health)")


//Next, create two subclasses of Cat - Cheetah and Lion
//
//Override the growl method of the Lion to make it print "ROAR!!!! I am the King of the Jungle" Override Lion's health to be 200
//Override the Cheetah's run method to print "Running Fast" and deduct 50 health 
//Add a sleep function to the Cheetah class that adds 50 health (make sure that the Cheetah's health limit remains 200)

class Lion : Cat
{
    override init(name: String)
    {
        super.init(name: name)
        self.health = 200
    }

    override func growl()
    {
        print("Roar")
    }
}

class Cheetah : Cat
{
    
    override init(name: String)
    {
        super.init(name: name)
        self.health = 200
    }
    
    override func run()
    {   if(self.health > 50)
        {
            print("Running fast ... ")
            self.health -= 50
        }
    }
    
    func sleep()
    {
        self.health += 50
        if(self.health > 200)
        {
            self.health = 200
        }
    }
}

//Create a Cheetah. Have the Cheetah run 4 times. Display the Cheetah's health. Now modify the Cheetah's run method so that it cannot run if it does not have the required health.
//
//Create a Lion. Have the Lion run 3 times. Have the Lion growl.

var chester: Cheetah = Cheetah(name: "Chester")

for _ in 1...4
{
    chester.run()
}

print("Health is \(chester.health)")

var alex: Lion = Lion(name: "Alex")

for _ in 1...3
{
    alex.run()
}

alex.growl()




























