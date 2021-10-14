

import UIKit

class ViewController: UIViewController {

    
    
    @IBAction func seg2(_ sender: UISegmentedControl) {
        
        switch seg.selectedSegmentIndex {
            
        case 0:
            
            tf.isHidden = false
            tf2.isHidden = false
            tf3.isHidden = false
       
            L1.isHidden = false
            L2.isHidden = false
        
            
        case 1:
            tf.isHidden = false
            tf2.isHidden = false
            tf3.isHidden = true
           
            L1.isHidden = false
            L2.isHidden = false
            L3.isHidden = true
        
        default:
            break;
       
        }
    }
    
    @IBOutlet weak var seg: UISegmentedControl!
    
    @IBOutlet weak var tf: UITextField!
    @IBOutlet weak var tf2: UITextField!
    @IBOutlet weak var tf3: UITextField!

    
    
    @IBOutlet weak var L1: UILabel!
    @IBOutlet weak var L2: UILabel!
    @IBOutlet weak var L3: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let savedName = UserDefaults.standard.value(forKey: "name_key") as? String
        tf.text = savedName
        
        let savedName2 = UserDefaults.standard.value(forKey: "name_key2") as? String
        tf2.text = savedName2
        
        let savedName3 = UserDefaults.standard.value(forKey: "name_key3") as? String
        tf3.text = savedName3
        
       
    }
    

    
    
    @IBAction func button(_ sender: Any) {
        
        var name = tf.text ?? " a"
        
        var name2 = tf2.text ?? " a1"
        var name3 = tf3.text ?? " a2"
       
       
        UserDefaults.standard.set(name, forKey: "name_key")
        UserDefaults.standard.set(name2, forKey: "name_key2")
        UserDefaults.standard.set(name3, forKey: "name_key3")
        
    }
    
}

