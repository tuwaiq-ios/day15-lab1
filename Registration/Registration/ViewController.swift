//
//  ViewController.swift
//  Registration
//
//  Created by sara al zhrani on 08/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{


    @IBOutlet weak var tf1: UITextField!
    
    @IBOutlet weak var tf2: UITextField!
    
   
    
    @IBOutlet weak var tf3: UITextField!
    
        
    @IBOutlet weak var tf4: UITextField!
    
    
    
    @IBAction func button1(_ sender: Any) {
        
        let  email = tf1.text
         let pass = tf2.text
        
        UserDefaults.standard.set(email,forKey: "namekey")
        
        UserDefaults.standard.set(pass,forKey: "passkey")
        
        
        
        var name = tf3.text ?? "Lareen"
        if name.isEmpty {
            name = "lareen"
        }
        UserDefaults.standard.set(name,
        forKey: "name1")
    
    }
    
        override func viewDidLoad() {
        super.viewDidLoad()
        tf1.delegate = self
        tf2.delegate = self
        tf3.delegate = self
        tf4.delegate = self
            
            let savedName = UserDefaults.standard.value(forKey: "name1") as? String
            tf3.text = savedName
            
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func segmentB(_ sender: UISegmentedControl) {
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
         let mail =  UserDefaults.standard.value(forKey: "namekey") as? String
         let word = UserDefaults.standard.value(forKey: "passkey") as? String
         tf1.text = mail
         tf2.text = word
     default:
         break
     }
    }
    
    
}

