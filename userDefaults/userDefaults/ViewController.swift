//
//  ViewController.swift
//  userDefaults
//
//  Created by PC on 08/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func sd(_ sender: Any) {
      switch ss.selectedSegmentIndex {
          case 0:
            text1.isHidden = true
            text2.isHidden = true
          case 1:
            text1.isHidden = false
            text2.isHidden = false
          default:
            break;
      } }
      @IBOutlet weak var ss: UISegmentedControl!

    @IBOutlet weak var text1: UITextField!
    
    
    @IBOutlet weak var text2: UITextField!

    
    
    @IBOutlet weak var text3: UITextField!
    
    @IBOutlet weak var text4: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let savedtext1 = UserDefaults.standard.value(forKey: "TextFieldtext1") as? String
        let savedtext2 = UserDefaults.standard.value(forKey: "TextFieldtext2")as? String
        let savedpass = UserDefaults.standard.value(forKey: "TextFieldpass")as? String
        let savedpass2 = UserDefaults.standard.value(forKey: "TextFieldtext4")as? String
        
        text1.text = savedtext1
        text2.text = savedtext2
        text3.text = savedpass
        text4.text = savedpass2
        
        
        
        
        // Do any additlet savedNamed = Uslet savedNamed = UserDefaults.standard.value(forKey: "name_key") as?String
        
       
       

    }
    
    @IBAction func button(_ sender: Any) {
    
        let name = text1.text
        let email = text2.text
        let pass = text3 . text
        let pass2 = text4 . text
        UserDefaults.standard.set(name, forKey: "TextFieldtext1")
        UserDefaults.standard.set(email, forKey: "TextFieldtext2")
        UserDefaults.standard.set(pass, forKey: "TextFieldtext3")
        UserDefaults.standard.set(pass2, forKey: "TextFieldtext4")
        
    }
        
    
    
        
}



