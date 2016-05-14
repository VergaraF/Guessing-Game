//
//  ViewController.swift
//  Guessing Game
//
//  Created by Fabian Vergara on 2016-04-30.
//  Copyright © 2016 fvergara. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var numberGivenByUser: UITextField!
    @IBOutlet var attemptResultLabel: UILabel!
    
    
    @IBAction func guessButton(sender: AnyObject) {
        let randomNum:Int = Int(arc4random_uniform(6))
        
        let userInput = Int(numberGivenByUser.text!)
        
        if (userInput != nil ){
            
        
            if (Int(numberGivenByUser.text!)! == randomNum){
                setLabel("Correct! The number was \(randomNum)", color: UIColor.greenColor())
            }else{
                setLabel("Sorry! The number was \(randomNum)", color: UIColor.redColor())
            }
            
        }else{
            setLabel("Please insert a valid number", color: UIColor.redColor())
        }
        
        attemptResultLabel.hidden = false;
        
    }
    
    func setLabel(str:String, color:UIColor){
        attemptResultLabel.textColor = color;
        attemptResultLabel.text = str
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.numberGivenByUser.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }


}

