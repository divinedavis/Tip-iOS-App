//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Divine Davis on 9/19/15.
//  Copyright © 2015 Juniper Street. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dollarInput: UITextField!
    @IBOutlet weak var taxButton: UISegmentedControl!
    @IBOutlet weak var outputLabel: UILabel!
    
    @IBAction func calculateButton(sender: AnyObject) {
        
        //1. Get the total bill
        let userInput = dollarInput.text as! NSString
        let totalBill : Float = userInput.floatValue
        
        //2. Determine the tip rate
        let index : Int = taxButton.selectedSegmentIndex
        var tipRate : Float = 0.15
        
        switch (index) {
        case 0:
            tipRate = 0.15
        case 1:
            tipRate = 0.20
        case 2:
            tipRate = 0.25
    break;

  default:
    break;
}
        //3. Calculate the tip
        let tip = totalBill * tipRate
        
        //4. Display the tip
        outputLabel.text = "$\(tip)"
        
        
        
        
    }
    
    
    override func viewDidLoad() {
    }

    override func didReceiveMemoryWarning() {
    }


}

