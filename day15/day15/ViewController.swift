//
//  ViewController.swift
//  day15
//
//  Created by Hassan Yahya on 08/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBAction func SGG(_ sender: Any) {
        switch SGC.selectedSegmentIndex {
        case 0:
           TF1.isHidden = true
            TF3.isHidden = true
        case 1:
            TF1.isHidden = false
            TF3.isHidden = false
        default:
            break;
        }
    }
    
    @IBOutlet weak var SGC: UISegmentedControl!
    @IBOutlet weak var TF1: UITextField!
    @IBOutlet weak var TF2: UITextField!
    @IBOutlet weak var TF3: UITextField!
    @IBOutlet weak var TF4: UITextField!
    @IBOutlet weak var buttonReg: UIButton!
    
    @IBAction func Button(_ sender: Any)
    
    {
    
        let name = TF1.text ?? ""
        let password = TF2.text ?? ""
        let CPassword = TF3.text ?? ""
        let Email = TF4.text ?? ""
       
        UserDefaults.standard.set(Email, forKey: "myemail")
        UserDefaults.standard.set(password, forKey: "pass")
        UserDefaults.standard.set(CPassword, forKey: "cpass")
        UserDefaults.standard.set(name, forKey: "Hassan")
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        TF1.delegate = self
        TF2.delegate = self
        TF3.delegate = self
        TF4.delegate = self
    

        TF1.text = UserDefaults.standard.value(forKey: "Hassan") as? String
        TF2.text = UserDefaults.standard.value(forKey: "myemail") as? String
        TF3.text = UserDefaults.standard.value(forKey: "pass") as? String
        TF4.text = UserDefaults.standard.value(forKey: "cpass") as? String


    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        TF1.resignFirstResponder()
        TF2.resignFirstResponder()
        TF3.resignFirstResponder()
        TF4.resignFirstResponder()

       return true
    }

}


