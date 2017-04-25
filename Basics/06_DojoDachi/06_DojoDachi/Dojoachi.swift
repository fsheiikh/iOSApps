//
//  Dojoachi.swift
//  06_DojoDachi
//
//  Created by User on 4/25/17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation

class Dojoachi
{
    var happiness : Int  = 20
    var fullness : Int = 20
    var energy : Int = 50
    var meals : Int = 3
    
    //Feeding your Dojodachi costs 1 meal and gains a random amount of fullness between 5 and 10 (you cannot feed your Dojodachi if you do not have meals)
    func eat() -> String
    {
        if(self.meals < 1 )
        {
            return "No more Meals"
        }
        else
        {
            self.meals -= 1
            let rand = Int(arc4random_uniform(UInt32(6) + 5)); //random between 5-10
            self.fullness += rand
            return "fullness increased by " + String(rand)
        }
    }
    
    //Playing with your Dojodachi costs 5 energy and gains a random amount of happiness between 5 and 10
    func play() -> String
    {
        if(self.energy < 1)
        {
            return "Energy Drained"
        }
        else
        {
            self.energy -= 5
            self.happiness += Int(arc4random_uniform(UInt32(6) + 5));
            return "Happiness Increased"
        }
    }
    
    //Working costs 5 energy and earns between 1 and 3 meals
    func work() -> String
    {
        if(self.energy < 1)
        {
            return "Energy Drained"
        }
        else
        {
            self.energy -= 5
            self.meals += Int(arc4random_uniform(UInt32(3) + 1));
            return "Worked"
        }
    }
    
    //Sleeping earns 15 energy and decreases fullness and happiness each by 5
    func sleep() -> String
    {
        self.energy += 15
        self.fullness -= 5
        self.happiness -= 5
        return "Sleeping ..."
    }
    
    //If energy, fullness, and happiness are all raised to over 100, you win! a restart button should be displayed.
    func isWin() -> Bool
    {
        if(self.energy > 99 && self.fullness > 99 && self.happiness > 99)
        {
            return true
        }
        else
        {
            return false
        }

    }
    
    //If fullness or happiness ever drop to 0, you lose, and a restart button should be displayed.
    func isLose() -> Bool
    {
        if(self.fullness < 1 || self.happiness < 1)
        {
            return true
        }
        else
        {
            return false
        }

    }
}

















