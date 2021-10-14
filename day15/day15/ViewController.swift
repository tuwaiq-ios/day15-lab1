//
//  ViewController.swift
//  day15
//
//  Created by Abdulaziz on 08/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBAction func segmentaChange(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
            
        case 0:
            nameTF.isHidden = false
            confirmTF.isHidden = false
        case 1:
            nameTF.isHidden = true
            confirmTF.isHidden = true
        default:
            break;
            
        }
    }
    
    
    @IBOutlet weak var nameTF: UITextField!
    
    @IBOutlet weak var PassTF: UITextField!
    
    @IBOutlet weak var emailTF: UITextField!
    
    @IBOutlet weak var confirmTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let savedName = UserDefaults.standard.value(forKey: "namedKey") as? String
        nameTF.text = savedName
        
        let savedpass = UserDefaults.standard.value(forKey: "passlKey") as? String
        PassTF.text = savedpass
        
        let savedemail = UserDefaults.standard.value(forKey: "emaillKey") as? String
        emailTF.text = savedemail
        
        let savedconfirm = UserDefaults.standard.value(forKey: "confirmlKey") as? String
        confirmTF.text = savedconfirm
    }
    
    @IBAction func button(_ sender: Any) {
        var name = nameTF.text ?? "aziz"
        var pass = PassTF.text ?? "123654"
        var confirm = confirmTF.text ?? "112345678"
        var email = emailTF.text ?? "1123456789"
        
        
        UserDefaults.standard.set(name, forKey: "namedKey")
        UserDefaults.standard.set(pass, forKey: "passlKey")
        UserDefaults.standard.set(confirm, forKey: "confirmlKey")
        UserDefaults.standard.set(email, forKey: "emaillKey")
        
        
        
        
        
        
    }
    
}

