//
//  ViewController.swift
//  TauntStringWrapper
//
//  Created by Aleksandr on 12/11/2019.
//  Copyright (c) 2019 Aleksandr. All rights reserved.
//

import UIKit
import TauntStringWrapper

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @TauntStringWrapper private var textValue = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textField.delegate = self
        textField.returnKeyType = .done
    }

}

extension ViewController: UITextFieldDelegate {

    func textFieldDidEndEditing(_ textField: UITextField) {
        guard let text = textField.text else { return }

        textValue = text
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
