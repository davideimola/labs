//
//  ViewController.swift
//  My First Project
//
//  Created by Davide Imola on 18/05/2019.
//  Copyright © 2019 Davide Imola. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        label.text = "Hello from code!"
        textField.becomeFirstResponder()
    }

    @IBAction func buttonWasTapped(_ sender: Any) {
        label.text = "Hello \(textField.text!)"
        textField.resignFirstResponder()
    }
    
}

