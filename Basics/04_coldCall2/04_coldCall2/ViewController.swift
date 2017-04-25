//
//  ViewController.swift
//  04_coldCall2
//
//  Created by User on 4/25/17.
//  Copyright © 2017 User. All rights reserved.
//

//Whenever we click on the Call button, we will not only get a random name displayed on the top but also a random number from 1 to 5 inclusive in the center of the screen. If the number is 1 or 2, the number should have a red color, if the number is 3 or 4 then the number should have an orange color, and finally, if the number is 5 then the number should have a green color.

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblNum: UILabel!
    
    var names : [String] = ["James", "Patrick", "Ryan", "Trevor", "Clint"];
   
    
    @IBAction func btnSubmit(sender: UIButton) {
        
        lblName.text = names[Int(arc4random_uniform(UInt32(names.count)))];
        lblNum.text = String(Int(arc4random_uniform(UInt32(names.count))) + 1);
        
        if(lblNum.text == "1" || lblNum.text == "2")
        {
             lblNum.textColor = UIColor.redColor();
        }
        else if(lblNum.text == "3" || lblNum.text == "4")
        {
            lblNum.textColor = UIColor.orangeColor();
        }
        else
        {
            lblNum.textColor = UIColor.greenColor();
        }
       
        
        print(names[Int(arc4random_uniform(UInt32(names.count)))]);
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblName.text  = " ";
        lblNum.text = " ";
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

