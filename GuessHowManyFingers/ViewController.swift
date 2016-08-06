//
//  ViewController.swift
//  GuessHowManyFingers
//
//  Created by Admin on 7/27/16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    
    @IBOutlet var answerField: UILabel!
    
    @IBAction func submitBtn(_ sender: AnyObject) {
        
        let chance = String(arc4random_uniform(6))
        
            if textField.text == chance {
            
                answerField.text = "You are Right"
        
            } else {
            
                answerField.text = "You are Wrong! It was a " + chance + "."
            }
        
       }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
