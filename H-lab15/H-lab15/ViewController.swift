//
//  ViewController.swift
//  H-lab15
//
//  Created by  HANAN ASIRI on 08/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
  
   
 
    @IBAction func bb(_ sender: UISegmentedControl) {
    
       switch sender.selectedSegmentIndex {
        case 0:
            tf1.isHidden = false
            tf2.isHidden = false
            tf3.isHidden = false
            tf4.isHidden = false
            
        case 1:
            tf1.isHidden = false
            tf2.isHidden = false
            tf3.isHidden = true
            tf4.isHidden = true
            
            let mail = UserDefaults.standard.value(forKey: "namekey") as? String
            let word = UserDefaults.standard.value(forKey: "pass") as? String
            tf1.text = mail
            tf2.text = word
            
        default:
            break
        }
            
            
            
        }


    
    
    @IBOutlet var tf1: UITextField!
    
    
    @IBOutlet var tf2: UITextField!
    
    
    @IBOutlet var tf3: UITextField!
    
    
    @IBOutlet var tf4: UITextField!
    
    
    @IBOutlet var buttone1: UIButton!
    
    @IBAction func Doublebutton(_ sender: Any) {
    }
    
    
    @IBAction func buttonRe(_ sender: Any) {
        
        var name = tf1.text ?? "HANAN"
        if name.isEmpty {
            name = "Empty"
        }
        
        var Email = tf2.text ?? "HANANASIRI.com"
        if Email.isEmpty {
            Email = "Empty"
        }
        
        
        var password = tf3.text ?? "177"
        if password.isEmpty {
            password = "Empty"
        }
        
        
        var confirm = tf4.text ?? "177"
        if confirm.isEmpty {
            confirm = "Empty"
        }
        
        
        UserDefaults.standard.set(name, forKey: "name")
        UserDefaults.standard.set(Email, forKey: "email")
        UserDefaults.standard.set(password, forKey: "password")
        UserDefaults.standard.set(confirm, forKey: "confirm")
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let savedname = UserDefaults.standard.value(forKey: "name") as? String
        tf1.text = savedname
        
        let savedemail = UserDefaults.standard.value(forKey: "email") as? String
        tf2.text = savedemail
        
        let savedpassword = UserDefaults.standard.value(forKey: "password") as? String
        tf3.text = savedpassword
        
        let savedconfirm = UserDefaults.standard.value(forKey: "confirm")
        tf4.text = (savedconfirm as? String)
    }
}
