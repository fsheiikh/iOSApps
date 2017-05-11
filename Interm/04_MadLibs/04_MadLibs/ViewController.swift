//
//  ViewController.swift
//  04_MadLibs
//
//  Created by User on 5/8/17.
//  Copyright © 2017 User. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtWords: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func updateText(segue: UIStoryboardSegue)
    {
        let controller = segue.sourceViewController as! FormViewController
        txtWords.text = "We are adding words ... we are \(controller.adjText!.text!) and will \(controller.txtVerb!.text!) and \(controller.txtVerb2!.text!) in the \(controller.txtNoun!.text!)"
        
        
    }


}

