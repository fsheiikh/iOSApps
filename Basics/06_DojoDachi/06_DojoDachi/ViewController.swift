//
//  ViewController.swift
//  06_DojoDachi
//
//  Created by User on 4/25/17.
//  Copyright © 2017 User. All rights reserved.
//

//Dojodachis have happiness, fullness, and energy that we need to max out. You can feed, play with, work, or sleep to manage these values. if you can get your Dojodachi's fullness, happiness, and energy above 100, you win! But if fullness or happiness falls to zero, your Dojodachi will die :(.
//
//Your Dojodachi should start with 20 happiness, 20 fullness, 50 energy, and 3 meals.
//
//After every button press, display a message showing how the Dojodachi reacted
//
//Feeding your Dojodachi costs 1 meal and gains a random amount of fullness between 5 and 10 (you cannot feed your Dojodachi if you do not have meals)
//Playing with your Dojodachi costs 5 energy and gains a random amount of happiness between 5 and 10
//
//Every time you play with or feed your dojodachi there should be a 25% chance that it won't like it. Energy or meals will still decrease, but happiness and fullness won't change.
//Working costs 5 energy and earns between 1 and 3 meals
//
//Sleeping earns 15 energy and decreases fullness and happiness each by 5
//
//If energy, fullness, and happiness are all raised to over 100, you win! a restart button should be displayed.
//
//If fullness or happiness ever drop to 0, you lose, and a restart button should be displayed.

import UIKit

class ViewController: UIViewController {
    
   

    @IBOutlet weak var lblFullness: UILabel!
    
    @IBOutlet weak var lblHappiness: UILabel!
    
    @IBOutlet weak var lblMeals: UILabel!
    
    @IBOutlet weak var lblEnergy: UILabel!
    
    @IBOutlet weak var lbltext: UILabel!
    
    var dojoAchi = Dojoachi()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        refresh()
    }
    
    @IBAction func btnSubmit(sender: UIButton) {
        switch(sender.tag)
        {
            case(1):
                lbltext.text = dojoAchi.eat()
            case(2):
                lbltext.text = dojoAchi.play()
            case(3):
                lbltext.text = dojoAchi.work()
            case(4):
                lbltext.text = dojoAchi.sleep()
            default:
                print("Nope")
        
        }
        refresh()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func refresh()
    {
        lblFullness.text = String(dojoAchi.fullness)
        lblHappiness.text = String(dojoAchi.happiness)
        lblMeals.text = String(dojoAchi.meals)
        lblEnergy.text = String(dojoAchi.energy)
    }


}



























