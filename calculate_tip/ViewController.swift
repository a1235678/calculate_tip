//
//  ViewController.swift
//  calculate_tip
//
//  Created by zero plus on 2016/10/21.
//  Copyright © 2016年 zero plus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var percentageTextField: UITextField!
    @IBOutlet weak var tipTextField: UITextField!
    
    @IBAction func calcButton(_ sender: AnyObject) {
        
        let totalTip: Double
        
        tipTextField.isHidden = false
        
        if let amount = Double(amountTextField.text!), let percentage = Double(percentageTextField.text!){
                totalTip = amount * percentage / 100
                tipTextField.text = "您的小費共\(totalTip)元"
        }else{
            tipTextField.text = "請輸入金額及費率"
        }
        
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

