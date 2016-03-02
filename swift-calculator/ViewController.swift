//
//  ViewController.swift
//  swift-calculator
//
//  Created by Mark Kipyegon Koskei on 18/02/2016.
//
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    var userInput: Bool = false

    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle
        if userInput {
        display.text = display.text! + digit!
        }
        else {
            display.text = digit
            userInput = true
        }
    }
    @IBAction func enter() {
        userInput = false
    }
}