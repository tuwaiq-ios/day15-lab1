//
//  ViewController.swift
//  Day15-lab1-Afnan
//
//  Created by Fno Khalid on 08/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tf1: UITextField!
    
    
    @IBOutlet weak var tf2: UITextField!
    
    
    @IBOutlet weak var tf3: UITextField!
    
    
    @IBOutlet weak var tf4: UITextField!

        
    @IBAction func Doublebutton(_ sender: UISegmentedControl) {
        
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
            
            let mail = UserDefaults.standard.value(forKey: "name") as? String
            let word = UserDefaults.standard.value(forKey: "passowrd") as? String
            tf1.text = mail
            tf2.text = word
            
        default:
            break
        }
    }
    
    @IBAction func buttonRe(_ sender: Any) {
        
        var name = tf1.text ?? "Afnan"
                 if name.isEmpty {
                  name = ""
                 }
        
            var Email = tf3.text ?? "Afnanmoghram@gmail.com"
                if Email.isEmpty {
                    Email = ""
                }
            var password = tf2.text ?? "12345"
                if password.isEmpty {
                        password = ""
                }
            var confirm = tf4.text ?? "12345"
                    if confirm.isEmpty {
                            confirm = ""
                        }
        
        UserDefaults.standard.set(name, forKey: "name")
        UserDefaults.standard.set(Email, forKey: "email")
        UserDefaults.standard.set(password, forKey: "password")
        UserDefaults.standard.set(confirm, forKey: "confirm")
}

        
   override  func viewDidLoad() {
         
        super.viewDidLoad()
         
         let savedname = UserDefaults.standard.value(forKey: "name") as? String
        tf1.text = savedname
        
        let savedemail = UserDefaults.standard.value(forKey: "email") as? String
        tf3.text = savedemail
        
        let savedpassword = UserDefaults.standard.value(forKey: "password") as? String
        tf2.text = savedpassword
        
        let savedconfirm = UserDefaults.standard.value(forKey: "confirm")
        tf4.text = savedconfirm as! String
    }
        

}
