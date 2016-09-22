//
//  ViewController.swift
//  myCalc
//
//  Created by Andrew on 2016-08-01.
//  Copyright © 2016 Andrew. All rights reserved.
//

import UIKit

var x = ""
var y = ""
var action = ""


class ViewController: UIViewController {

    @IBOutlet var outputLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func numberPressed(button: UIButton!) {
        
        if outputLabel.text == "0" {
            outputLabel.text = "\(button.tag)"
        } else {
            outputLabel.text = outputLabel.text! + "\(button.tag)"
        }
    }

    
    @IBAction func onPlusButton(sender: AnyObject) {
        rememberX()
        action = "Plus"
        makeLabelZero()
    }
   
    @IBAction func onMinusButton(sender: AnyObject) {
        rememberX()
        action = "Minus"
        makeLabelZero()
    }
    
    @IBAction func onMultiplyButton(sender: AnyObject) {
        rememberX()
        action = "Multiply"
        makeLabelZero()
    }
    
    @IBAction func onDivideButton(sender: AnyObject) {
        rememberX()
        action = "Divide"
        makeLabelZero()
    }
    
    @IBAction func onEqualButton(sender: AnyObject) {
        
        y = outputLabel.text!
        outputLabel.text = ""
        
        if action == "Plus" {
            outputLabel.text = "\(Double(x)! + Double(y)!)"
        } else if action == "Minus" {
            outputLabel.text = "\(Double(x)! - Double(y)!)"
        } else if action == "Multiply" {
            outputLabel.text = "\(Double(x)! * Double(y)!)"
        } else {
            outputLabel.text = "\(Double(x)! / Double(y)!)"
        }
        
        x = ""
        y = ""
        
    }
    
    
    func rememberX() {
        x = outputLabel.text!
    }
    
    func makeLabelZero() {
        outputLabel.text = "0"
    }
    
    
    
    

}

