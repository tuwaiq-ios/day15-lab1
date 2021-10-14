//
//  ViewController.swift
//  day 15 by m.ali
//
//  Created by m Al-qhtani on 08/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func seq(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            TFname.isHidden = false
            TFcpass.isHidden = false
        case 1:
            TFcpass.isHidden = true
            TFname.isHidden = true
        default:
            break;
        }
    }
    
    @IBOutlet weak var ccc: UISegmentedControl!
    @IBOutlet weak var TFname: UITextField!
    
    @IBOutlet weak var TFemail: UITextField!
    
    @IBOutlet weak var TFpass: UITextField!
    
    @IBOutlet weak var TFcpass: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        
        let savedName = UserDefaults.standard.value(forKey: "namedKey") as? String
        TFname.text = savedName
        let savedpass = UserDefaults.standard.value(forKey: "passlKey") as? String
        TFpass.text = savedpass
        let savedemail = UserDefaults.standard.value(forKey: "emaillKey") as? String
        TFemail.text = savedemail
        let savedconfirm = UserDefaults.standard.value(forKey: "confirmlKey") as? String
        TFcpass.text = savedconfirm
    }
    @IBAction func button(_ sender: Any) {
        var name = TFname.text ?? "mohammed"
        var pass = TFpass.text ?? "123654"
        var  email = TFpass.text ?? "123654"
        var confirm = TFpass.text ?? "123654"
        
        UserDefaults.standard.set(name, forKey: "namedKey")
        UserDefaults.standard.set(pass, forKey: "passlKey")
        UserDefaults.standard.set(email, forKey: "emaillKey")
        UserDefaults.standard.set(confirm, forKey: "confirmlKey")
    }
}



