//
//  ViewController.swift
//  CodePath-Prework
//
//  Created by Denielle Abaquita on 8/25/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var tipPercentLabel: UILabel!
    @IBOutlet weak var tipControlSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tip Calculator"
        self.billAmountTextField.becomeFirstResponder()
        self.tipControlSlider.value = 50
    }
    
    @IBAction func sliderValueChanged(_ sender: Any) {
        self.tipPercentLabel.text = "\(Int(self.tipControlSlider.value))%"
        
        // Calculate tip and bill total
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercent = Double(tipControlSlider.value) / 100.0
        let tip = bill * tipPercent
        let total = bill + tip
        
        // Update Labels
        self.tipAmountLabel.text = String(format: "$%.2f", tip)
        self.totalAmountLabel.text = String(format: "$%.2f", total)
    }
}

