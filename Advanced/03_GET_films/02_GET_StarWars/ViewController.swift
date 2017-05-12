//
//  ViewController.swift
//  02_GET_StarWars
//
//  Created by User on 5/11/17.
//  Copyright © 2017 User. All rights reserved.
//

import UIKit

class StarWarsViewController: UITableViewController {
    
    
    var people : [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        addMorePeople("http://swapi.co/api/people/")
    }
    
    
    func addMorePeople(myUrl: String)
    {
        super.viewDidLoad()
        
        
        let url = NSURL(string: myUrl)
        
        let session = NSURLSession.sharedSession()
        
        let request = NSMutableURLRequest(URL: url!)
        
        let task = session.dataTaskWithRequest(request, completionHandler: {
            
            data, response, error in
            
            do
            {
                if let jsonResult = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as? NSDictionary
                {
                    
                    
                    if let results = jsonResult["results"]
                    {
                        let resultsArray = results as! NSArray
                        
                        
                        for person in resultsArray
                        {
                            let personDict = person as! NSDictionary
                            self.people.append(personDict["name"] as! String)
                        }

//                        if(jsonResult["next"] != nil) //my orginal code that wasnt working properly with Json Null values
//                        {
//            
//                            //print(jsonResult["next"] as! NSValue?)
//                            //print(jsonResult["next"])
//                            //var something = jsonResult["next"] as! String?
//                            //print("Something", something!)
//                            
//                            self.addMorePeople(jsonResult["next"] as! String)
//                        }
                        
                        
                        if self.nullToNil(jsonResult["next"]) != nil {
                            print(jsonResult["next"] as! String?)
                            self.addMorePeople(jsonResult["next"] as! String)
                        }
                       
                    }
                }
                
            }
            catch
            {
                print(error)
            }
            
            self.tableView.reloadData()
            
        })
        
        task.resume()

    }
    
    ///http://stackoverflow.com/questions/37606376/how-to-handle-json-null-values-in-swift
    func nullToNil(value : AnyObject?) -> AnyObject? {
        if value is NSNull {
            return nil
        } else {
            return value
        }
    }
    ///code to check for null JSON
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("My Cell", forIndexPath: indexPath)
        
        cell.textLabel!.text = people[indexPath.row]
        return cell
        
    }


}

