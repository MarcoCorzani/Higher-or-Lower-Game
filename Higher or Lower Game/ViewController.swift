//
//  ViewController.swift
//  Higher or Lower Game
//
//  Created by Marco F.A. Corzani on 20.12.14.
//  Copyright (c) 2014 Alphaweb. All rights reserved.
//

import UIKit




class ViewController: UIViewController {
    
    var number: Int!
   
   
    @IBOutlet weak var inputTextField: UITextField!
    
    
    @IBOutlet weak var outputLabel: UILabel!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
       
        
        number = 30
        
        number = Int(arc4random_uniform(100) + 1)
    
        
    }

    

    
    @IBAction func guessButton(sender: AnyObject) {
   
    let zahl = inputTextField.text.toInt()!
    
        inputTextField.text = ""
    
    if zahl < number {
    
        outputLabel.text = "Meine Zahl ist höher als \(zahl)"
    }
    else if zahl > number {
        
       outputLabel.text = "Meine Zahl ist niedriger als \(zahl)"
        }
    else {
        outputLabel.text = "Du hast die Zahl \(zahl) erraten"
        }
    
    
    }


    @IBAction func resetButtonPressed(sender: AnyObject) {
    
    number = Int(arc4random_uniform(100) + 1)
    outputLabel.text = "Dann noch einmal!"
    inputTextField.text = ""
    }



}








