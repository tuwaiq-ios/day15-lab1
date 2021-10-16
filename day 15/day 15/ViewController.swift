//
//  ViewController.swift
//  day 15
//
//  Created by alanood on 09/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textFeildEmail: UITextField!
    
    @IBOutlet weak var textFieldPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        textFeildEmail.delegate = self
        textFieldPassword.delegate = self 
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        self.textFeildEmail.resignFirstResponder()
        self.textFieldPassword.resignFirstResponder()
        return true
    }
    @IBAction func ButtonLoginTapped(_ sender: Any) {
    }
    @IBAction func RegisterButton(_ sender: Any) {
    }
    @IBAction func didChangeSegment(_ sender: UISegmentedControl){
    }
        if sender.selectedSegmentIndex == 0 {
            }
        else if sender.selectedSegmentIndex == 1 {
    }
}

