//
//  ViewController.swift
//  SignUpScreen
//
//  Created by jgchoiqa on 2017. 6. 7..
//  Copyright © 2017년 Joshua. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var idTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var telTextField: UITextField!
    @IBOutlet var blogTextField: UITextField!

    @IBOutlet var resultTextView: UITextView!
    
    @IBAction func signUpAction(_ sender: AnyObject) {
        resultTextView.text = "\(nameTextField.text!) 님 가입을 축하합니다."
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

