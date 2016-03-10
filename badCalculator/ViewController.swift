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
        if (numbers) == "0" || (numbers) == "+" {
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
    
    @IBAction func equalsTap(eqButton: UIButton) {
        currentvalue = display.text!
        let num1 = Int(firstvalue)
        let num2 = Int(currentvalue)
        var total = 0
        if (num1 > 0 ) {
            total = num1! + num2!
        }else{
            total = num2!
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

