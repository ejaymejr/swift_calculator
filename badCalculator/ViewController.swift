//
//  ViewController.swift
//  badCalculator
//
//  Created by Emmanuel jayme on 8/3/16.
//  Copyright © 2016 Emmanuel jayme. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var firstvalue = ""
    
    var operation = ""
    
    var currentvalue = ""
    

    
    @IBOutlet weak var display: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var mybutton: UIButton!
    
    
    @IBAction func numericTap(numButton : UIButton)
    {
        var numbers = display.text
        if ((numbers) == "0" || (numbers) == "+" || (numbers) == "-" || (numbers) == "/" || (numbers) == "x" ){
            display.text = (numButton.titleLabel!.text)
        }else{
            numbers = (display.text! + (numButton.titleLabel!.text)!)
            display.text = (numbers)        }
        
    }
    
    @IBAction func plusTap(plusButton: UIButton) {
        firstvalue = display.text!
        display.text = "+"
        operation = "+"
    }
    
    @IBAction func minusTap(minusButton: UIButton) {
        firstvalue = display.text!
        display.text = "-"
        operation = "-"
    }
    
    @IBAction func divisionTap(divisionButton: UIButton) {
        firstvalue = display.text!
        display.text = "/"
        operation = "/"
    }
    
    @IBAction func multiplyTap(multiplyButton: UIButton) {
        firstvalue = display.text!
        display.text = "x"
        operation = "*"
    }
    
    @IBAction func equalsTap(eqButton: UIButton) {
        currentvalue = display.text!
        let num1 = Float(firstvalue)
        let num2 = Float(currentvalue)
        var total : Float = 0
        switch(true){
        case (num1 == 0 && num2 == 0):
            total = 0
        case (num1 > 0 && num2 > 0 ):
            switch(operation){
                case "-":
                    total = num1! - num2!
                case "/":
                    total = num1! / num2!
                case "*":
                    total = num1! * num2!
                default:
                    total = num1! + num2!
            }
            
        case (num1 > 0 && num2 == 0):
            total = num1!
        case (num1 == 0 && num2 > 0):
            total = num2!
        default:
            total = 0
        }

        display.text = String(total)
    }
    
    @IBAction func allClearTap(acButton: UIButton) {
        display.text = ""
        firstvalue = ""
        currentvalue = ""
        operation = ""
    }
    
}

