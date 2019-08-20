//
//  ViewController.swift
//  UnitConverter
//
//  Created by Jason Lee on 8/20/19.
//  Copyright © 2019 Jason Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tempText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        tempText.endEditing(true)
    }

    @IBAction func convertTemp(_ sender: UIButton) {
        guard let tempString = tempText.text else {return}
        if let fahrenheit = Double(tempString) {
            let celsius = (fahrenheit - 32)/1.8
            let resultText = "Celsius \(celsius)"
            resultLabel.text = resultText
        }
    }
    
    @IBAction func textFieldReturn(_ sender: UITextField) {
        _ = resignFirstResponder()
    }
}
