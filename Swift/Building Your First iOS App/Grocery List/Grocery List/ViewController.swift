//
//  ViewController.swift
//  Grocery List
//
//  Created by Davide Imola on 18/05/2019.
//  Copyright © 2019 Davide Imola. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textView.delegate = self
    }

    @IBAction func addItem(_ sender: Any) {
        if let text = textField.text, text != "" {
            textView.text.append("\(text)\n")
            textField.text = ""
            textField.resignFirstResponder()
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textField.resignFirstResponder()
    }
    
    func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}

