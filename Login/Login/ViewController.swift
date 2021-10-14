//
//  ViewController.swift
//  Login
//
//  Created by Fawaz on 08/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
  
  @IBOutlet weak var name: UITextField!
  @IBOutlet weak var email: UITextField!
  @IBOutlet weak var password: UITextField!
  @IBOutlet weak var conf: UITextField!
  @IBOutlet weak var register: UIButton!
  @IBOutlet weak var Segment: UISegmentedControl!
  @IBOutlet weak var remember: UIButton!
  
  //----------------------------------------------------------------
  //----------------------------------------------------------------
  
  var rem: Bool! = false
  @IBAction func remember(_ sender: Any) {
    
    if (rem == false){
      remember.setImage(UIImage(systemName: "checkmark.circle"), for: .normal)
      rem = true
    }
    else if (rem == true){
      remember.setImage(UIImage(systemName: "circle.dashed"), for: .normal)
      rem = false
    }
  }
  
  //----------------------------------------------------------------
  //----------------------------------------------------------------
  
  @IBAction func Segment(_ sender: Any) {
    
    switch Segment.selectedSegmentIndex {
    case 0:
      name.isHidden = false
      conf.isHidden = false
    case 1:
      name.isHidden = true
      conf.isHidden = true
    default:
      break;
    }
  }
  
  //----------------------------------------------------------------
  //----------------------------------------------------------------
  
  @IBAction func register(_ sender: Any) {
    let namee = name.text ?? ""
    let emaill = email.text ?? ""
    let passwordd = password.text ?? ""
    let conff = conf.text ?? ""
    
    UserDefaults.standard.set(namee, forKey: "na")
    UserDefaults.standard.set(emaill, forKey: "em")
    UserDefaults.standard.set(passwordd, forKey: "pa")
    UserDefaults.standard.set(conff, forKey: "co")
    
    if (rem == true){
      UserDefaults.standard.set("0", forKey: "t")
    }
    else{
      UserDefaults.standard.set("1", forKey: "f")
    }
  }
  
  //----------------------------------------------------------------
  //----------------------------------------------------------------
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    name.delegate = self
    email.delegate = self
    password.delegate = self
    conf.delegate = self
    
    name.text = UserDefaults.standard.value(forKey: "na") as? String
    email.text = UserDefaults.standard.value(forKey: "em") as? String
    password.text = UserDefaults.standard.value(forKey: "pa") as? String
    conf.text = UserDefaults.standard.value(forKey: "co") as? String
    
    if UserDefaults.standard.string(forKey: "rem") == "1" {
      
      if (rem == false){
        remember.setImage(UIImage(systemName: "checkmark.circle"), for: .normal)
        rem = true
      }
      else if (rem == true){
        remember.setImage(UIImage(systemName: "circle.dashed"), for: .normal)
        rem = false
      }
    }
  }
  
  //----------------------------------------------------------------
  //----------------------------------------------------------------
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    
    name.resignFirstResponder()
    email.resignFirstResponder()
    password.resignFirstResponder()
    conf.resignFirstResponder()
    
    return true
  }
}
