//
//  ViewController.swift
//  Day_15
//
//  Created by dmdm on 14/10/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ss: UISegmentedControl!
    
    @IBAction func sd(_ sender: Any) {
        switch ss.selectedSegmentIndex {
        case 0:
            tf1.isHidden = true
            tf4.isHidden = true
        case 1:
            tf1.isHidden = false
            tf4.isHidden = false
        default:
            break;
        }
        
    }
    
    @IBOutlet weak var tf1: UITextField!
    
    @IBOutlet weak var tf2: UITextField!
    
    @IBOutlet weak var tf3: UITextField!
    
    @IBOutlet weak var tf4: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let savename = UserDefaults.standard.value(forKey: "name1")
        let saveemail = UserDefaults.standard.value(forKey: "email1")
        let savepassword = UserDefaults.standard.value(forKey: "password1")
        let saveconfirmpassword = UserDefaults.standard.value(forKey: "confrimPassword1")
        
        tf1.text = savename as? String
        tf2.text = saveemail as? String
        tf3.text = savepassword as? String
        tf4.text = saveconfirmpassword as? String
        
        
    }
    
    @IBAction func ButtonPressed(_ sender: Any) {
        
        let name = tf1.text ?? "name"
        if name.isEmpty {
            "name"
            UserDefaults.standard.set(name, forKey: "name1")
        }
        let email = tf1.text ?? "email"
        if name.isEmpty {
            "email"
            UserDefaults.standard.set(name, forKey: "email1")
        }
        let password = tf1.text ?? "password"
        if name.isEmpty {
            "password"
            UserDefaults.standard.set(name, forKey: "password1")
        }
        let confrimPassword = tf1.text ?? "confrimPassword"
        if name.isEmpty {
            "confrimPassword"
            UserDefaults.standard.set(name, forKey: "confrimPassword1")
            
        }
        
    }
    
    
    
}

