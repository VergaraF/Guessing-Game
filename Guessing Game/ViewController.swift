//
//  ViewController.swift
//  Guessing Game
//
//  Created by Fabian Vergara on 2016-04-30.
//  Copyright © 2016 fvergara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numberGivenByUser: UITextField!
    @IBOutlet var attemptResultLabel: UILabel!
    
    
    @IBAction func guessButton(sender: AnyObject) {
        let randomNum:Int = Int(arc4random_uniform(6))
        
        if (Int(numberGivenByUser.text!)! == randomNum){
            attemptResultLabel.textColor = UIColor.greenColor()
            attemptResultLabel.text = "Correct! The number was \(randomNum)"
        }else{
            attemptResultLabel.textColor = UIColor.redColor()
            attemptResultLabel.text = "Sorry! The number was \(randomNum)"
            
        }
        
        attemptResultLabel.hidden = false;
        
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

