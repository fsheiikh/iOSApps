//
//  AddPeopleController.swift
//  01_BucketListCrud
//
//  Created by User on 5/8/17.
//  Copyright © 2017 User. All rights reserved.
//

import UIKit

class AddPeopleController: UITableViewController {
    
    
    var delegate : PeopleDelegate?
    var itemDuringSegue: NSManagedObject?
    var itemIndexSeguePath : NSIndexPath?
    
    @IBOutlet weak var txtField: UITextField!
    
    @IBAction func btnCancel(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func btnSave(sender: UIBarButtonItem) {
        //delegate?.SavePressed(by: self, with: txtField.text!, at: itemInSeguePath)
        delegate?.SavePressed(by: self, with: txtField.text!, at: itemIndexSeguePath)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtField.text = itemDuringSegue
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
