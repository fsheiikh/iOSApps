//
//  SecondViewController.swift
//  03_NorthSouthEastWest_Redux
//
//  Created by User on 5/8/17.
//  Copyright © 2017 User. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var buttonText: UIButton!
    
    var direction : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonText.setTitle(direction, forState: UIControlState.Normal )
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
