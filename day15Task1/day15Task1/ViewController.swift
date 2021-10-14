//
//  ViewController.swift
//  day15Task1
//
//  Created by HANAN on 08/03/1443 AH.
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let savedName = UserDefaults.standard.value(forKey: "name_key") as?
        String
        
        text1.text = savedName
        
        let savedName1 = UserDefaults.standard.value(forKey: "name2lkey") as? String
        
        text2.text = savedName1
    }
    
    
    @IBAction func udbutton(_ sender: Any) {
        
        var name = text1.text ?? "nuna"
        if name.isEmpty {
            name = "Empty"
        }
        
        var name2 = text2.text ?? "nuna2"
        if name2.isEmpty {
            name2 = "Empty"
        }
        
        
        UserDefaults.standard.set(name, forKey:"name_key" )
        UserDefaults.standard.set(name2, forKey:"name2lkey" )
    } }


