//
//  ViewController.swift
//  UserDefults.Fatimah
//
//  Created by MacBook on 08/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tf1: UITextField!
    
    @IBOutlet weak var tfEmail: UITextField!
    
    
    @IBOutlet weak var buttonSegment: UISegmentedControl!
    
    @IBAction func butttonAction(_ sender: UIButton) {
    }
    
    @IBAction func didchangeSegment_(_ sender: UISegmentedControl)  {
        switch buttonSegment.selectedSegmentIndex {
            
        case 0:
            tf1.isHidden = true
            tfEmail.isHidden = true
        case 1:
            tf1.isHidden = false
            tfEmail.isHidden = false
        default:
            break;
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let savedname = UserDefaults.standard.value(forKey: "f67h") as? String
        tf1.text = savedname
        
        let savedname2 = UserDefaults.standard.value(forKey: "f67h3") as? String
        tf1.text = savedname
        
    }
    
    @IBAction func buttonregister(_ sender: Any) {
        
        var name = tf1.text ?? "fatimah"
        
        if name.isEmpty {
            name = "Empty"
        }
        
        var name2 = tfEmail.text ??  "e"
        
        if name2.isEmpty {
            name2 = "Empty"
        }
        
        
        UserDefaults.standard.set(name, forKey: "f67h")
        UserDefaults.standard.set(name2, forKey: "f67h3")
    }
}

