//
//  CalculatorViewController.swift
//  UiTableViewController Test 02
//
//  Created by D7703_17 on 2018. 6. 29..
//  Copyright © 2018년 lse. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

      var numberOnView:Double = 0
      var previousNumber:Double = 0
      var performingMath = false
      var operation = 0
      
      @IBOutlet weak var lblResult: UILabel!
      @IBAction func numbers(_ sender: UIButton) {
            
            if performingMath == true {
                  lblResult.text = String(sender.tag-1)
                  numberOnView = Double(lblResult.text!)!
                  performingMath = false
            }
            else {
                  lblResult.text = lblResult.text! + String(sender.tag-1)
                  numberOnView = Double(lblResult.text!)!
                  
            }
      }
      
      @IBAction func buttons(_ sender: UIButton) {
            if lblResult.text != "" && sender.tag != 11 && sender.tag != 16 {
                  previousNumber = Double(lblResult.text!)!
            
            if sender.tag == 12 { // /
                  lblResult.text = "/"
            }
            else if sender.tag == 13 { // *
                  lblResult.text = "*"
            }
            else if sender.tag == 14 { // -
                  lblResult.text = "-"
            }
            else if sender.tag == 15 { // +
                  lblResult.text = "+"
            }
            
            operation = sender.tag
            performingMath = true
            }
            else if sender.tag == 16 {
                  if operation == 12 {
                        lblResult.text = String(previousNumber / numberOnView)
                  }
                  else if operation == 13 {
                        lblResult.text = String(previousNumber * numberOnView)
                  }
                  else if operation == 14 {
                        lblResult.text = String(previousNumber - numberOnView)
                  }
                  else if operation == 15 {
                        lblResult.text = String(previousNumber + numberOnView)
                  }
            }
            else if sender.tag == 11 {
                  lblResult.text = ""
                  previousNumber = 0
                  numberOnView = 0
                  operation = 0
            }
      }
      
      override func viewDidLoad() {
        super.viewDidLoad()
    }
}
