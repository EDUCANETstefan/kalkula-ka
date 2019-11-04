//
//  ViewController.swift
//  Calculator
//
//  Created by Stefan Rajilić on 22/10/2019.
//  Copyright © 2019 Stefan Rajilić. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numScreen: Double = 0;
    var preNumber: Double = 0;
    var performingMath = false;
    var operation = 0;

    @IBOutlet weak var myLable: UILabel!
    @IBOutlet weak var acButton: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var buttonRovna: UIButton!
    @IBOutlet weak var buttonCarka: UIButton!
    @IBOutlet weak var buttonPlus: UIButton!
    @IBOutlet weak var buttonMinus: UIButton!
    @IBOutlet weak var buttonKrat: UIButton!
    @IBOutlet weak var buttonDeleno: UIButton!
    @IBOutlet weak var button0: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button9.layer.cornerRadius = button9.frame.width / 2
        button8.layer.cornerRadius = button8.frame.width / 2
        button7.layer.cornerRadius = button7.frame.width / 2
        button6.layer.cornerRadius = button6.frame.width / 2
        button5.layer.cornerRadius = button5.frame.width / 2
        button4.layer.cornerRadius = button4.frame.width / 2
        button3.layer.cornerRadius = button3.frame.width / 2
        button2.layer.cornerRadius = button2.frame.width / 2
        button1.layer.cornerRadius = button1.frame.width / 2
        
        acButton.layer.cornerRadius = acButton.frame.width / 7
        button0.layer.cornerRadius = button0.frame.width / 4.5
        buttonPlus.layer.cornerRadius = buttonPlus.frame.width / 2
        buttonMinus.layer.cornerRadius = buttonMinus.frame.width / 2
        buttonKrat.layer.cornerRadius = buttonKrat.frame.width / 2
        buttonDeleno.layer.cornerRadius = buttonDeleno.frame.width / 2
        buttonCarka.layer.cornerRadius = buttonCarka.frame.width / 2
        buttonRovna.layer.cornerRadius = buttonRovna.frame.width / 2
    }
    
    @IBAction func numbers(_ sender: UIButton) {
           
        if performingMath == true {
            
           myLable.text = String(sender.tag-1)
           numScreen = Double(myLable.text!)!
           performingMath = false

           } else {

           myLable.text = myLable.text! + String(sender.tag-1)
           numScreen = Double(myLable.text!)!

           }
       }
    
    @IBAction func buttons(_ sender: UIButton) {
        
        if myLable.text != "" && sender.tag != 11 && sender.tag != 16{
        preNumber = Double(myLable.text!)!

        if sender.tag == 12 {

        myLable.text = "/";

        }

        if sender.tag == 13 {

        myLable.text = "x";

        }

        if sender.tag == 14 {

        myLable.text = "-";

        }

        if sender.tag == 15 {

        myLable.text = "+";

        }

        operation = sender.tag
        performingMath = true;

        } else if sender.tag == 16 {

        if operation == 12{

        myLable.text = String(preNumber / numScreen)

        } else if operation == 13{

        myLable.text = String(preNumber * numScreen)

        } else if operation == 14{

        myLable.text = String(preNumber - numScreen)

        } else if operation == 15{

        myLable.text = String(preNumber + numScreen)

        }

        } else if sender.tag == 11{

        myLable.text = ""
        preNumber = 0;
        numScreen = 0;
        operation = 0;

        }
    }
}

