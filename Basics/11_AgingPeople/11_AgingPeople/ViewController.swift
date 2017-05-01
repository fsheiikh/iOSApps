//
//  ViewController.swift
//  11_AgingPeople
//
//  Created by User on 5/1/17.
//  Copyright © 2017 User. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var names = ["Naruto", "Sasuke", "Kakashi", "Goku", "Vegeta", "Sponegbob", "Sam", "LeBron"]
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController : UITableViewDataSource
{
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
       let cell = tableView.dequeueReusableCellWithIdentifier("MyCell", forIndexPath: indexPath)
//        
        //if you want subtitile use below code VV
//        let cell = UITableViewCell(style: UITableViewCellStyle.Subtitle,
//                               reuseIdentifier: "MyCell")
        
       
        
        cell.textLabel?.text = "\(names[indexPath.row])"
        cell.detailTextLabel?.text = "\(Int(arc4random_uniform(90)) + 5) Years Old"

        return cell
    }
    
    
}