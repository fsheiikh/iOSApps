//
//  ViewController.swift
//  02_storyBoardPractice2
//
//  Created by User on 4/20/17.
//  Copyright © 2017 User. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblSaying: UILabel!
    var quote: [String] = ["It's", "Over", "9000"]
    var count: Int = 0
    
    @IBAction func btnNext(sender: AnyObject) {
        if(count >= 2)
        {
            count = 0
        }
        else
        {
            count += 1
        }
        lblSaying.text = quote[count]
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblSaying.text = quote[0]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

