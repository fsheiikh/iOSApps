//
//  ViewController.swift
//  10_table_view
//
//  Created by User on 5/1/17.
//  Copyright © 2017 User. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tasks = ["one" ,"two", "threee"]
    
    @IBOutlet weak var txtBeast: UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func btnBeast(sender: UIButton) {
        tasks.append(txtBeast.text!)
        txtBeast.text = ""
        tableView.reloadData()
        print(tasks)
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController : UITableViewDataSource
{
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("MyCell", forIndexPath: indexPath)
        
        cell.textLabel?.text = tasks[indexPath.row]
        return cell
    }
}

extension ViewController : UITableViewDelegate
{
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("Section: \(indexPath.section) and Row: \(indexPath.row)")
        
        tasks.removeAtIndex(indexPath.row)
        tableView.reloadData()
    }

}