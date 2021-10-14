//
//  ViewController.swift
//  day15 userdefult
//
//  Created by Maram Al shahrani on 08/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tf: UITextField!
    @IBOutlet weak var tf2: UITextField!
    @IBOutlet weak var tf3: UITextField!
    @IBOutlet weak var tf4: UITextField!
    
    @IBOutlet weak var seg2: UISegmentedControl!
    @IBAction func seg(_ sender: Any) {
        
        switch seg2.selectedSegmentIndex{
        case 0:
            tf.isHidden = false
            tf2.isHidden = false
        case 1:
            tf.isHidden = true
            tf2.isHidden = true
        default:
            break;
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let savedName = UserDefaults.standard.value(forKey: "name_kay") as? String
        tf.text = savedName
        
        let savedName2 = UserDefaults.standard.value(forKey: "name_kay2") as? String
        tf2.text = savedName2
        
        let savedName3 = UserDefaults.standard.value(forKey: "name_kay3") as? String
        tf3.text = savedName3
        
        let savedName4 = UserDefaults.standard.value(forKey: "name_kay4") as? String
        tf4.text = savedName4
    }
    
    
    @IBAction func button(_ sender: Any) {
        
        
        let name = tf.text ?? "Name"
        
        let name2 = tf2.text ?? "Email"
    
        let name3 = tf3.text ?? "Password"
    
        let name4 = tf4.text ?? "confirm password"
        
        UserDefaults.standard.set(name, forKey: "name_kay")
        UserDefaults.standard.set(name2, forKey: "name_kay2")
        UserDefaults.standard.set(name3, forKey: "name_kay3")
        UserDefaults.standard.set(name4, forKey: "name_kay4")
        
    }
}

