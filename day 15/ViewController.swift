//
//  ViewController.swift
//  day 15
//
//  Created by Amal on 08/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var name: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       let savedName = UserDefaults.standard.value(forKey: "textFieldName") as? String
        name.text = savedName
        
        let savedEmail = UserDefaults.standard.value(forKey: "textFieldEmail") as? String
         email.text = savedEmail
        
        
        let savedPass = UserDefaults.standard.value(forKey: "textFieldPass")
        password.text = "\(savedPass!)"

      
        let savedPass2 = UserDefaults.standard.value(forKey: "textFieldPass2")
         confirmPassword.text = "\(savedPass2!)"
        
    }

    @IBAction func Button(_ sender: Any) {
        var name1 = name.text ?? "amal"
        if name1.isEmpty {
            name1 = "empty"
        }
        UserDefaults.standard.set(name1, forKey:"textFieldName")
        
        
        var email1 = email.text ?? "amal"
        if email1.isEmpty {
            email1 = "empty"
        }
        UserDefaults.standard.set(email1, forKey:"textFieldEmail")
        
        
       var pass = password.text ?? "0"
        if pass.isEmpty {
            pass = "empty"
        }
        UserDefaults.standard.set(pass, forKey:"textFieldPass")

        var pass2 = confirmPassword.text ?? "0"
        if pass2.isEmpty {
            pass2 = "empty"
        }
        UserDefaults.standard.set(pass2, forKey:"textFieldPass2")
    }
    

    @IBAction func butt2(_ sender: Any) {
    }
    
    @IBOutlet weak var segmentcontrol: UISegmentedControl!
    @IBAction func segment(_ sender: Any) {
        
        switch segmentcontrol.selectedSegmentIndex {
        case 1:
            name.isHidden = true
            confirmPassword.isHidden = true
        case 0:
            name.isHidden = false
            confirmPassword.isHidden = false
        default:
            break;
        }
   }
}

