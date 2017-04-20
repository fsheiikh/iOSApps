//
//  ViewController.swift
//  03_coldCall
//
//  Created by User on 4/20/17.
//  Copyright © 2017 User. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    
    var names = ["Michael", "Dwight", "Jim", "Ryan", "Daryl", "Andrew", "Oscar"]
    
     var idx : Int = 0
    
    
    
    @IBAction func btnCaller(sender: UIButton) {
        
        idx = Int(arc4random_uniform(UInt32(names.count)))
        print(idx)
        lblName.text = names[idx]

    }
   
    
    @IBAction func btnCall(sender: AnyObject) {
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

