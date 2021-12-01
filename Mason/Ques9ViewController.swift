//
//  Ques9ViewController.swift
//  Mason
//
//  Created by TongWY on 2021/11/18.
//

import UIKit

class Ques9ViewController: UIViewController {
    @IBOutlet weak var seekbar1: UISlider!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var seekbar2: UISlider!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var seekbar3: UISlider!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var seekbar4: UISlider!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var seekbar5: UISlider!
    @IBOutlet weak var label5: UILabel!

    @IBOutlet weak var btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        btn.setTitleColor(UIColor(red: 7/255, green: 103/255, blue: 53/255, alpha: 1), for: .normal)
        btn.backgroundColor = UIColor(red: 255/255, green: 205/255, blue: 52/255, alpha: 1)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeData(_ sender: UISlider) {
        switch sender.tag {
        case 1:
            label1.text = String(Int(seekbar1.value))
        case 2:
            label2.text = String(Int(seekbar2.value))
        case 3:
            label3.text = String(Int(seekbar3.value))
        case 4:
            label4.text = String(Int(seekbar4.value))
        case 5:
            label5.text = String(Int(seekbar5.value))
        default:
            print("error")
        }
    }

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        quesList.ques9_1 = label1.text ?? ""
        quesList.ques9_2 = label2.text ?? ""
        quesList.ques9_3 = label3.text ?? ""
        quesList.ques9_4 = label4.text ?? ""
        quesList.ques9_5 = label5.text ?? ""
        
        return true
    }

}
