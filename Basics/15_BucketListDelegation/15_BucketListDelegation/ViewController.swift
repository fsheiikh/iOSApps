//
//  ViewController.swift
//  15_BucketListDelegation
//
//  Created by User on 5/4/17.
//  Copyright © 2017 User. All rights reserved.
//

import UIKit

class BucketListViewController: UITableViewController, CancelSaveDelegate {
    
    var items = ["hello", "hello", "sdasd", "sdadaå"]
    
    override func viewDidLoad() {
        super.viewDidLoad()    }

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
    
    //in order to get index of item we click we need to implement this and call for a segue
   override func tableView(tableView: UITableView, accessoryButtonTappedForRowWithIndexPath indexPath: NSIndexPath) {
        performSegueWithIdentifier("EditItemSegue", sender: indexPath)
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        items.removeAtIndex(indexPath.row)
        tableView.reloadData()
    }
    
    //once we click either button the data is prepared for the cancelsave view controller
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        let nav = segue.destinationViewController as! UINavigationController
        let cancelSaveController = nav.topViewController as! CancelSaveViewController
        cancelSaveController.delegate = self
      
        if(segue.identifier == "EditItemSegue")
        {
            //from didSelectRowAtIndexPath
            let indexPath = sender as! NSIndexPath
            let item = items[indexPath.row]
            
            cancelSaveController.itemDuringSegue = item
            cancelSaveController.itemIndexDuringSegue = indexPath
        }
        
    }
    
    
    
     //func implementation for delegate CancelSaveDelegate
    func cancelButtonPressed(by controller: UITableViewController) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    //func implementation for delegate CancelSaveDelegate
    func saveButtonPressed(by controller: UITableViewController, with text: String, at itemIndex: NSIndexPath?) {
        
        if let ip = itemIndex
        {
            items[ip.row] = text
        }
        else
        {
            items.append(text)
        }
        
    
        tableView.reloadData()
        dismissViewControllerAnimated(true, completion: nil)
    }
}









