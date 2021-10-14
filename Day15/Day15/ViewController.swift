//
//  ViewController.swift
//  Day15
//
//  Created by Sara M on 08/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segment: UISegmentedControl!
    @IBAction func segmentaction(_ sender: Any) {
        switch segment.selectedSegmentIndex {
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
        
        let savedname =  UserDefaults.standard.value(forKey:"saved1") as? String
        let savedemail =  UserDefaults.standard.value(forKey:"saved2") as? String
        let savedepassword =  UserDefaults.standard.value(forKey:"saved3") as? String
        let savedconfirmpassword =  UserDefaults.standard.value(forKey:"saved4") as? String
        
        
        
        tf1.text = savedname
        tf2.text = savedemail
        tf3.text = savedepassword
        tf4.text = savedconfirmpassword
    }
    @IBAction func buttonpress(_ sender: Any) {
       
        
        let name = tf1.text ??  "name"
        if name.isEmpty {
            "name"
        UserDefaults.standard.set(
                name,
                forKey: "saved1")
        }
        
        let email = tf1.text ?? "Email"
        if email.isEmpty {
            "Email"
            UserDefaults.standard.set(
               email ,
                forKey: "saved2")
        }
        let Password = tf3.text ?? "password"
        if Password.isEmpty {
            "password"
        UserDefaults.standard.set(
            Password,
            forKey: "saved3")
    }
        let confirmPassword = tf3.text ?? "confirmpassword"
        if confirmPassword.isEmpty {
            "confirmpassword"
        UserDefaults.standard.set(
            Password,
            forKey: "saved4")
    }
        
}

}
