//
//  AddItemTableViewController.swift
//  15_Bucket_List
//
//  Created by User on 5/3/17.
//  Copyright © 2017 User. All rights reserved.
//

import UIKit

class AddItemTableViewController: UITableViewController {
    
    weak var delegate: CancelButtonDelegate?
    
    @IBOutlet weak var lblText: UILabel!
    
    @IBOutlet weak var textBox: UITextField!
    
    
    @IBAction func btnSave(sender: UIBarButtonItem) {
        
    }
    
    
    @IBAction func btnCancel(sender: UIBarButtonItem) {
        delegate?.cancelButtonPressed(by: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblText.text = "Hello"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning() 
    }
    
    
    
}
