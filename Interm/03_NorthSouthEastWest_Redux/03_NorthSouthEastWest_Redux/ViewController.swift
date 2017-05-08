//
//  ViewController.swift
//  03_NorthSouthEastWest_Redux
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
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let direction = sender as! String
        let controller = segue.destinationViewController as! SecondViewController
        
        controller.direction = direction
        
    }
    
    @IBAction func buttonPressed(sender: UIButton) {
        performSegueWithIdentifier("DirectionSegue", sender: sender.titleLabel!.text!)
    }
    
    @IBAction func goBack(segue: UIStoryboardSegue)
    {
    
    }

}

