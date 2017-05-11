//
//  ViewController.swift
//  01_iOSFrontEnd
//
//  Created by User on 5/11/17.
//  Copyright © 2017 User. All rights reserved.
//

import UIKit

class PeopleViewController: UITableViewController {
    
    
    var people : [String] = ["dummy data"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string: "http://swapi.co/api/people/")
        // create a URLSession to handle the request tasks
        let session = NSURLSession.sharedSession()
        
        let request = NSMutableURLRequest(URL: url!);
        
        
        // create a "data task" to make the request and run the completion handler
        let task = session.dataTaskWithRequest(request)  {
            
            // see: Swift closure expression syntax
            data, response, error in
  
            //var newPeople : [String] = []
            
            do {
                // try converting the JSON object to "Foundation Types" (NSDictionary, NSArray, NSString, etc.)
                if let jsonResult = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as? NSDictionary {
                    if let results = jsonResult["results"] {
                        // coercing the results object as an NSArray and then storing that in resultsArray
                        let resultsArray = results as! NSArray
                        // now we can run NSArray methods like count and firstObject
                        print(resultsArray.count)
                        //print(resultsArray[0]["name"] as! String)
                        
                        for person in resultsArray
                        {
                           //newPeople.append(person["name"] as! String) //my first way
                            let personDict = person as! NSDictionary
                            self.people.append(personDict["name"]! as! String)
                        }
                        
                    }
                }
            } catch
            {
                print(error)
            }
            
            //print("old people, ", self.people)
            //print("New newpeople, ", newPeople)
//            self.people = newPeople
            self.tableView.reloadData()
        }
        // execute the task and wait for the response before
        // running the completion handler. This is async!
        
        task.resume()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return the count of people in our data array
        return people.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        // set the default cell label to the corresponding element in the people array
        print("People is now", people)
        cell.textLabel?.text = people[indexPath.row] 
        // return the cell so that it can be rendered
        return cell
    }

}

