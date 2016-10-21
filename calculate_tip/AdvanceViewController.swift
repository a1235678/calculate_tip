//
//  AdvanceViewController.swift
//  calculate_tip
//
//  Created by zero plus on 2016/10/21.
//  Copyright © 2016年 zero plus. All rights reserved.
//

import UIKit

class AdvanceViewController: UIViewController {

    //input
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var percentageLabel: UILabel!
    @IBOutlet weak var taxLabel: UILabel!
    @IBOutlet weak var peopleLabel: UILabel!
    
    //output
    @IBOutlet weak var afterTaxTextField: UITextField!
    @IBOutlet weak var tipTextField: UITextField!
    @IBOutlet weak var perPersonTextField: UITextField!
    
    @IBAction func percentageSlider(_ sender: UISlider) {
        percentageLabel.text = "\(Int(sender.value))"
        autoCalc()
    }
    
    @IBAction func taxSlider(_ sender: UISlider) {
        taxLabel.text = "\(Int(sender.value))"
        autoCalc()
    }
    
    @IBAction func peopleSlider(_ sender: UISlider) {
        peopleLabel.text = "\(Int(sender.value))"
        autoCalc()
    }
    @IBAction func amountEditingDidEnd(_ sender: AnyObject) {
        autoCalc()
    }
    
    func autoCalc(){
        let amount = Double(amountTextField.text!)
        let percentage = Double(percentageLabel.text!)
        let tax = Double(taxLabel.text!)
        let people = Double(peopleLabel.text!)
        
        if amount != nil{
            let amountAfterTax = amount! * (1 + tax! / 100)
            let tip = amountAfterTax * percentage! / 100
            let perPerson = (amountAfterTax + tip) / people!
        
            afterTaxTextField.text = "\(amountAfterTax)"
            tipTextField.text = "\(tip)"
            perPersonTextField.text = "\(NSString(format:"%.2f",perPerson))"
        }
        
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
