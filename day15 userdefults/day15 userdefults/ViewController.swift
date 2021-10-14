//
//  ViewController.swift
//  day15 userdefults
//
//  Created by Kholod Sultan on 08/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tf: UITextField!
    
    
    @IBOutlet weak var tf2: UITextField!
    
    
    @IBOutlet weak var tf3: UITextField!
    
    
    @IBOutlet weak var tf4: UITextField!
    
    @IBOutlet weak var segment1: UISegmentedControl!
    
    
    @IBAction func segment(_ sender: Any) {
        
        
        switch segment1.selectedSegmentIndex{
        case 0:
            tf.isHidden = true
            tf2.isHidden = true
        case 1:
            tf.isHidden = false
            tf2.isHidden =  false
        default:
            break;
            
        }
    }
    
        override func viewDidLoad() {
        super.viewDidLoad()
        
        
            let saveName = UserDefaults.standard.value(forKey: "name_key") as? String
        tf.text = saveName
        
            let saveName2 = UserDefaults.standard.value(forKey: "name_key2") as? String
        tf2.text = saveName2
        
            let saveName3 = UserDefaults.standard.value(forKey: "name_key3") as?String
        tf3.text = saveName3
        
            let saveName4 = UserDefaults.standard.value(forKey: "name_key4") as? String
        tf4.text = saveName4
        
    }
    
    
    @IBAction func button(_ sender: Any) {
        
        
        let name = tf.text ?? "Name"
        let name2 = tf2.text ?? "Email"
        let name3 = tf3.text ?? "password"
        let name4 = tf4.text ?? "confirm password"
        
        
        UserDefaults.standard.set(name, forKey: "name_key")
        UserDefaults.standard.set(name2, forKey: "name_key2")
        UserDefaults.standard.set(name3, forKey: "name_key3")
        UserDefaults.standard.set(name4, forKey: "name_key4")
        
        
        }
        
    
        
    }

    
    




