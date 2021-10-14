//
//  ViewController.swift
//  Day 15
//
//  Created by Tsnim Alqahtani on 08/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfname: UITextField!
    @IBOutlet weak var tfEmaill: UITextField!
    
    @IBOutlet weak var tfPass: UITextField!
    @IBOutlet weak var tfConf: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let savedName = UserDefaults.standard.value(forKey: "Data_key"
        ) as? String
        
         let savedemail = UserDefaults.standard.value(forKey: "email_key"
         ) as? String
        let savedpass = UserDefaults.standard.value(forKey: "pass_key"
        ) as? String
        
        let savedconf = UserDefaults.standard.value(forKey: "conf_key"
        ) as? String
        
        tfname.text = savedName
        tfEmaill.text = savedemail
        tfPass.text = savedpass
        tfConf.text = savedconf
    }

    @IBAction func buttonpressed(_ sender: Any) {
        var name = tfname.text ?? "tasneem"
       var email = tfEmaill.text ?? "123"
        var pass = tfPass.text ?? "123"
       var confpass = tfConf.text ?? "123"
        
    UserDefaults.standard.set(name, forKey: "Data_key")
  UserDefaults.standard.set(email,forKey: "email_key")
    UserDefaults.standard.set(pass,forKey: "pass_key")
    UserDefaults.standard.set(confpass,forKey: "conf_key")
    }
    

    @IBAction func logIn(_ sender: UISegmentedControl) {
    
        switch sender.selectedSegmentIndex {
            case 0:
            tfname.isHidden = true
            tfConf.isHidden = true
            case 1:
            tfname.isHidden = false
            tfConf.isHidden = false
            default:
            break;
           
}
}
}
