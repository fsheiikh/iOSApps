//
//  SecondViewController.swift
//  02_NorthEastSouthWest
//
//  Created by User on 5/8/17.
//  Copyright © 2017 User. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var txtLabel: UILabel!
    var tempText : String?
    
    @IBAction func btnCancel(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        txtLabel.text = tempText
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
