//
//  ViewController.swift
//  login form Day15
//
//  Created by Eth Os on 08/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    @IBOutlet weak var cofirmTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
        emailTextField.delegate = self
        passTextField.delegate = self
        cofirmTextField.delegate = self
        
        registerButton.setTitle("Register", for: .normal)
    }

  
    @IBAction func formChangButton(_ sender: UISegmentedControl) {
        let segment = sender.selectedSegmentIndex
       
        switch segment {
        case 0:
            nameTextField.isHidden = false
            emailTextField.isHidden = false
            passTextField.isHidden = false
            cofirmTextField.isHidden = false

            emailTextField.text = ""
            passTextField.text = ""
            registerButton.setTitle("Register", for: .normal)
        case 1:
            emailTextField.isHidden = false
            passTextField.isHidden = false
            nameTextField.isHidden = true
            cofirmTextField.isHidden = true
            registerButton.setTitle("Login", for: .normal)

            let defEmail = UserDefaults.standard.value(forKey: "email_key") as? String
            let defPass = UserDefaults.standard.value(forKey: "pass_key") as? String
            emailTextField.text = defEmail
            passTextField.text = defPass
        default:
            break
        }
        
    }
    
    @IBAction func registureButtonPressed(_ sender: Any) {
        let email = emailTextField.text
        let pass = passTextField.text
        UserDefaults.standard.set(email, forKey: "email_key")
        UserDefaults.standard.set(pass, forKey: "pass_key")
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameTextField.resignFirstResponder()
        emailTextField.resignFirstResponder()
        passTextField.resignFirstResponder()
        cofirmTextField.resignFirstResponder()
        return true
    }
}

