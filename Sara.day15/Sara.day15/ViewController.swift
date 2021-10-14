//
//  ViewController.swift
//  Sara.day15
//
//  Created by SARA SAUD on 3/8/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slog: UISegmentedControl!

    @IBOutlet weak var TextLabel: UILabel!
    @IBAction func slog2(_ sender: Any) {
        
        switch slog.selectedSegmentIndex {
        case 1: name1.isHidden = true
            cPass1.isHidden = true
            TextLabel.text = "Log In"
        
            
            
        case 0: name1.isHidden = false
            cPass1.isHidden = false
            TextLabel.text = "Register"

        default:
            break;
            
        }
    }
    
    
    @IBOutlet weak var name1: UITextField!
    @IBOutlet weak var email1: UITextField!
    @IBOutlet weak var pass1: UITextField!
    @IBOutlet weak var cPass1: UITextField!
    
    var items = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            self.items = UserDefaults.standard.stringArray(forKey: "items") ?? []
        title = "LOGIN to APP"

        
        
        let sName = UserDefaults.standard.value(forKey: "name_key") as? String
        name1.text = sName
        
        let semail = UserDefaults.standard.value(forKey: "email_key") as? String
        email1.text = semail
        
        let spass = UserDefaults.standard.value(forKey: "pass_key") as? String
        pass1.text = spass
        
        let scpass = UserDefaults.standard.value(forKey: "cpass_key") as? String
        cPass1.text = scpass
        
        
        // Do any additional setup after loading the view.
    }
    @IBAction func save(_ sender: Any) {
       
        
    var aname = name1.text ?? "X"
    if aname.isEmpty {
        aname = "X"
        
    }
    UserDefaults.standard.set((aname), forKey: "name_key")

        var aemail = email1.text ?? "X"
        if aemail.isEmpty {
            aemail = "X"
        }
        UserDefaults.standard.set((aemail), forKey: "email_key")

        var aspass = pass1.text ?? "X"
        if aspass.isEmpty {
            aspass = "X"
        }
        UserDefaults.standard.set((aspass), forKey: "pass_key")

        var acpass = cPass1.text ?? "X"
        if acpass.isEmpty {
            acpass = "X"
        }
        UserDefaults.standard.set((acpass), forKey: "cpass_key")

    }
    
    
    
}

