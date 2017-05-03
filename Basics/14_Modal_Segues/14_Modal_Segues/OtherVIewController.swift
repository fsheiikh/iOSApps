//
//  OtherVIewController.swift
//  14_Modal_Segues
//
//  Created by User on 5/1/17.
//  Copyright © 2017 User. All rights reserved.
//

import UIKit

class OtherVIewController: UIViewController {
    
    
    @IBOutlet weak var lblSecondView: UILabel!
     var output : String?
    
    @IBAction func btnPress(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblSecondView.text = output
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
