//
//  ViewController.swift
//  15_Bucket_List
//
//  Created by User on 5/3/17.
//  Copyright © 2017 User. All rights reserved.
//

import UIKit

class BucketListViewController: UITableViewController, CancelButtonDelegate {
    
    var items = ["Something", "Something", "Something"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Loaded")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("My Cell", forIndexPath: indexPath)
        
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let navigationController = segue.destinationViewController as! UINavigationController
        let addItemTableViewController = navigationController.topViewController as! AddItemTableViewController
        print("in BucketLtVC")
        addItemTableViewController.delegate = self 
        
        
    }
    
    func cancelButtonPressed(by controller: UIViewController) {
        dismissViewControllerAnimated(true, completion: nil)
    }

}

