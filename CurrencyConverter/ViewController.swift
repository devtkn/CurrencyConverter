//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Thomas Krentz on 23.03.18.
//  Copyright © 2018 Thomas Krentz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var poundLabel: UILabel!
    @IBOutlet weak var yenLabel: UILabel!
    @IBOutlet weak var euroLabel: UILabel!
    
    let poundRate = 0.69
    let yenRate = 113.94
    let euroRate = 0.89
    var dollarAmount = 0.0
    
    @IBAction func clearTextfield(_ sender: UIButton) {
        inputTextField.text = ""
    }
    @IBAction func convertCurrency(_ sender: UIButton) {
        if let amount = Double(inputTextField.text!) {
            dollarAmount = amount
        }
        poundLabel.text = "\(dollarAmount * poundRate)"
        yenLabel.text = "\(dollarAmount * yenRate)"
        euroLabel.text = "\(dollarAmount * euroRate)"
        dollarAmount = 0.0
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        inputTextField.delegate = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Called when 'return' key is pressed
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // Called when user taps outside the text field
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }


}

