//
//  ViewController.swift
//  05_NinjaGold
//
//  Created by User on 4/25/17.
//  Copyright © 2017 User. All rights reserved.
//
//Farm earns 10 - 20 golds Cave earns 5 - 10 golds House earns 2 - 5 golds Casino earns/takes 0 - 50 golds

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblTotal: UILabel!
    
    var total : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnEarn(sender: UIButton) {
        switch (sender.tag)
        {
            case(1):
                total += Int(arc4random_uniform(UInt32(20))) + 10;
            case(2):
                total += Int(arc4random_uniform(UInt32(10))) + 5;
            case(3):
                total += Int(arc4random_uniform(UInt32(5))) + 2;
            case(4):
                total += Int(arc4random_uniform(UInt32(50))) - 1;
            default:
                print(0)
        }
        
        lblTotal.text = String(total);
    }

}

