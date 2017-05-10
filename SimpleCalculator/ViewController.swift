//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Luis Cobian on 5/9/17.
//  Copyright © 2017 Luis Cobian. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    
    @IBOutlet var textFieldNumber1: UITextField!
    @IBOutlet var textFieldNumber2: UITextField!
    
    @IBOutlet var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resultLabel.text = "0.0"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func btnPressed(_ sender: UIButton) {
        
        let signo = sender.currentTitle!
        
        let num1 = Float(textFieldNumber1.text!)!
        let num2 = Float(textFieldNumber2.text!)!
        var result: Float = 0;
        switch signo {
        case "+":
            result = num1 + num2
        case "-":
            result = num1 - num2
        case "*":
            result = num1 * num2
        case "/":
            result = num1 / num2
        case "^":
            result = pow(num1,num2)
        default:
            result = 0
      
        }
        
        //resultLabel.text = String(result)
        resultLabel.text = String(format: "%.2f", result)
        
    }


}

