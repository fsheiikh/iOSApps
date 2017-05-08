//
//  ViewController.swift
//  01_BucketListCrud
//
//  Created by User on 5/8/17.
//  Copyright © 2017 User. All rights reserved.
//

import UIKit

class BucketListViewController: UITableViewController, PeopleDelegate {
    
    var people = ["Goku", "vegeta", "trunks"];
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("People", forIndexPath: indexPath);
        
        cell.textLabel?.text =  people[indexPath.row]
        return cell
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        people.removeAtIndex(indexPath.row)
        tableView.reloadData()
    }
    
    //in order to get index of item we click we need to implement this and call for a segue
    override func tableView(tableView: UITableView, accessoryButtonTappedForRowWithIndexPath indexPath: NSIndexPath) {
        performSegueWithIdentifier("EditPerson", sender: indexPath)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nav = segue.destinationViewController as! UINavigationController
        let addPeopleController = nav.topViewController as! AddPeopleController
        addPeopleController.delegate = self
        
        //only need the above code for addding
        if(segue.identifier == "EditPerson")
        {
            
            let indexPath = sender as! NSIndexPath //index of tapped
            let item = people[indexPath.row] //get person based on taht index^
            
            addPeopleController.itemIndexSeguePath = indexPath
            addPeopleController.itemDuringSegue = item
        }
        
        
    }

    func SavePressed(by controller: UITableViewController, with text: String, at indexPath: NSIndexPath?) {
        
        
        if let index = indexPath
        {
            people[index.row] = text
        }
        else
        {
            people.append(text)
        }
        
        tableView.reloadData()
        dismissViewControllerAnimated(true, completion: nil)
    }
}

