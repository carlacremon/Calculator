//
//  ViewController.swift
//  Calculator
//
//  Created by Carla Carolina Cremon on 09/02/16.
//  Copyright © 2016 Carla Carolina Cremon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Screen: UILabel!
    var firstNumber = Float() //Int()
    var secondNumber = Float()// Int()
    var isTypingNumber = false
    var result = Float()//Int()
    var operation = ""
    
    
    @IBAction func number(sender: AnyObject) {
       // isTypingNumber = false
        var number = sender.currentTitle
        
        if isTypingNumber == true {
            
            Screen.text = Screen.text! + number!!
            
        } else {
            Screen.text = number;
        }
        isTypingNumber = true
        
    }
    
    
    @IBAction func dot(sender: AnyObject) {
        var dot = sender.currentTitle
        
        Screen.text = Screen.text! + dot!!
        
    }
    
  
    @IBAction func operation(sender: AnyObject) {
        isTypingNumber = false
        firstNumber = (Screen.text! as NSString).floatValue
        
        operation = sender.currentTitle!!
        
        
    }
    
    @IBAction func equals(sender: AnyObject) {

        secondNumber = (Screen.text! as NSString).floatValue
       
        if operation == "+"{
            result = firstNumber + secondNumber
        } else if operation == "-"{
            result = firstNumber - secondNumber
        } else if operation == "/" {
            result = firstNumber / secondNumber
        } else if operation == "X" {
            result = firstNumber * secondNumber
        } else if operation == "+/-" {
            result =  -firstNumber
        }else if operation == "√" {
            result =  sqrt(firstNumber)
        }
        else {
            result = (firstNumber/100)*secondNumber
        }
        
        Screen.text = "\(result)"
        
        
    }
    
    
    @IBAction func clear(sender: AnyObject) {
        firstNumber = 0
        secondNumber = 0
        isTypingNumber = false
        result = 0
        Screen.text = "\(result)"
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

