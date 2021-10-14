//
//  ViewController.swift
//  day15
//
//  Created by Macbook on 08/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tf1: UITextField!
    
    @IBOutlet weak var tf2: UITextField!
    
    @IBOutlet weak var tf3: UITextField!
    
    @IBOutlet weak var tf4: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tf1.text = UserDefaults.standard.value(forKey: "1") as? String
        tf2.text = UserDefaults.standard.value(forKey: "2") as? String
        tf3.text = UserDefaults.standard.value(forKey: "3") as? String
        tf4.text = UserDefaults.standard.value(forKey: "4") as? String
        
    }
    
    @IBAction func save(_ sender: UIButton) {
        
        var name1 = tf1.text
        var email = tf2.text
        var pass = tf3.text
        var con = tf4.text
        
        
        UserDefaults.standard.set(
            name1,
            forKey: "1"
        )
        UserDefaults.standard.set(
            email,
            forKey: "2"
        )
        UserDefaults.standard.set(
            pass,
            forKey: "3"
        )
        UserDefaults.standard.set(
            con,
            forKey: "4"
        )
    }
    
    
    @IBAction func seqment(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 1 {
            tf1.isHidden = true
            tf4.isHidden = true
        }
        else {
            tf1.isHidden = false
            tf4.isHidden = false
        }
    }
}

