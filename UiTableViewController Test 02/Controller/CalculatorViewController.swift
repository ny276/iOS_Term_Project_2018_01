//
//  CalculatorViewController.swift
//  UiTableViewController Test 02
//
//  Created by D7703_17 on 2018. 6. 29..
//  Copyright © 2018년 lse. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

      var numberOnScreen:Double = 0
      
      @IBOutlet weak var lblResult: UILabel!
      @IBAction func numbers(_ sender: UIButton) {
            lblResult.text = lblResult.text! + String(sender.tag-1)
            numberOnScreen = Double(lblResult.text!)!
      }
      
      override func viewDidLoad() {
        super.viewDidLoad()
    }
}
