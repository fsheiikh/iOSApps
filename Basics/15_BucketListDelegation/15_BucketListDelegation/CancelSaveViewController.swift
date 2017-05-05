//
//  CancelSaveViewController.swift
//  15_BucketListDelegation
//
//  Created by User on 5/4/17.
//  Copyright © 2017 User. All rights reserved.
//

import UIKit

class CancelSaveViewController: UITableViewController {
    
    var delegate : CancelSaveDelegate?
    var itemDuringSegue: String?
    var itemIndexDuringSegue: NSIndexPath?
  
    @IBOutlet weak var txtField: UITextField!
    
    @IBAction func CancelButton(sender: UIBarButtonItem) {
        delegate?.cancelButtonPressed(by: self)
        //dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func SaveButton(sender: UIBarButtonItem) {
        if(txtField != "")
        {
            delegate?.saveButtonPressed(by: self, with: txtField.text!, at: itemIndexDuringSegue)
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtField.text = itemDuringSegue
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        print("hkj")
    }
}
