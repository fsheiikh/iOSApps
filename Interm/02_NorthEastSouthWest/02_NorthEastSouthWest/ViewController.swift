//
//  ViewController.swift
//  02_NorthEastSouthWest
//
//  Created by User on 5/8/17.
//  Copyright © 2017 User. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnNorth(sender: UIButton) {
        let identity : String?
        
        switch sender.tag {
        case 1:
            identity = "North"
        case 2:
            identity = "East"
        case 3:
            identity = "South"
        case 4:
            identity = "West"
        default:
            identity = "None"
        }
        
        performSegueWithIdentifier(identity!, sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nav = segue.destinationViewController as! UINavigationController
        let finalDestination = nav.topViewController as! SecondViewController
        
        print(segue.identifier)
        finalDestination.tempText = segue.identifier 
        
    }
    
}

