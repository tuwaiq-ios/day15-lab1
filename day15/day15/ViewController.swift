//
//  ViewController.swift
//  day15
//
//  Created by ibrahim asiri on 08/03/1443 AH.
//

import UIKit



class ViewController: UIViewController{
    
    
    @IBOutlet weak var segControl: UISegmentedControl!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passTF: UITextField!
    @IBOutlet weak var confirmPassTF: UITextField!
    @IBOutlet weak var regLogBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sName = UserDefaults.standard.value(forKey: "name1")
        let sEmail = UserDefaults.standard.value(forKey: "email1")
        let sPass = UserDefaults.standard.value(forKey: "pass1")
        let sConfPass = UserDefaults.standard.value(forKey: "cPass1")

        nameTF.text = sName as? String
        emailTF.text = sEmail as? String
        passTF.text = sPass as? String
        confirmPassTF.text = sConfPass as? String

    }
    
    @IBAction func segmentCont(_ sender: UISegmentedControl){
        switch sender.selectedSegmentIndex{
        case 0:
            view.backgroundColor = .white
            nameTF.isHidden = false
            emailTF.isHidden = false
            passTF.isHidden = false
            confirmPassTF.isHidden = false
            
            regLogBtn.setTitle("Register", for: .normal)
        case 1:
            view.backgroundColor = .opaqueSeparator
            confirmPassTF.isHidden = true
            nameTF.isHidden = true
            
            regLogBtn.setTitle("Loging", for: .normal)
        default:
            break;
    }
    }
    
    @IBAction func registBtn(_ sender: Any) {
        
        let name = nameTF.text
        let email = emailTF.text
        let pass = passTF.text
        let confPass = confirmPassTF.text
      
        UserDefaults.standard.set(name, forKey: "name1")
        UserDefaults.standard.set(email, forKey: "email1")
        UserDefaults.standard.set(pass, forKey: "pass1")
        UserDefaults.standard.set(confPass, forKey: "cPass1")
    }
    
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//             nameTF.resignFirstResponder()
//             emailTF.resignFirstResponder()
//             passTF.resignFirstResponder()
//             confirmPassTF.resignFirstResponder()
//             return true
//         }
}

