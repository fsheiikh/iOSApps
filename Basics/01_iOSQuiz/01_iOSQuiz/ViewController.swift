//
//  ViewController.swift
//  01_iOSQuiz
//
//  Created by User on 4/20/17.
//  Copyright © 2017 User. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var qBank: [String: String] = [String: String]() //initialize the dictionary of Q AND A'S

    @IBOutlet weak var lblQuestion: UILabel!

    @IBOutlet weak var lblAnswer: UILabel!
  
    var questionCount : Int = 0 //Keeps track of needed index for keys
    var keys = [] //initialize keys array (will get keys from dict qbank)
    
    
    
    @IBAction func btnNext(sender: AnyObject)
    {
        lblAnswer.text = ""
        
        if(questionCount >= qBank.count) //makes sure to avoid index out of bounds
        {
            questionCount = 0
        }
        
        keys = Array(qBank.keys) //sets arrays with questions
        
        lblQuestion.text = keys[questionCount] as! String //using the questionCount index we set the label
        
        questionCount += 1
        
    }
    
    @IBAction func btnAnswer(sender: AnyObject)
    {
        lblAnswer.text = qBank[keys[questionCount - 1] as! String] //based on current question, we use the text to get the value from qBank dictionary. ex. keys[0] -> "Question" ... qBank["Question"] -> "Answer"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lblAnswer.text = " "
        
        lblQuestion.text = " "
        
        qBank = ["What is Michael's middle name?" : "Gary",
                 "In episode The Injury, what appliance does Michael burn his foot on?" : "George Foreman Grill",
                 "True or False: Michael Scott did not attend college" : "False",
                 "What is the name of Michael's nephew, who interns at Dunder Mifflin?" : "Luke",
                 "What is the name of the screenplay that Michael writes?" : "Threat Level Midnight"
            
                ]
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

