//
//  Ques8ViewController.swift
//  Mason
//
//  Created by TongWY on 2021/11/18.
//

import UIKit

class Ques8ViewController: UIViewController {
    @IBOutlet weak var seeekbar1: UISlider!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var seeekbar2: UISlider!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var seeekbar3: UISlider!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var seeekbar4: UISlider!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var seeekbar5: UISlider!
    @IBOutlet weak var label5: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func changeData(_ sender: UISlider) {
        switch sender.tag {
        case 1:
            label1.text = String(Int(seeekbar1.value))
        case 2:
            label2.text = String(Int(seeekbar2.value))
        case 3:
            label3.text = String(Int(seeekbar3.value))
        case 4:
            label4.text = String(Int(seeekbar4.value))
        case 5:
            label5.text = String(Int(seeekbar5.value))
        default:
            print("error")
        }
    }

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        quesList.ques8_1 = label1.text ?? ""
        quesList.ques8_2 = label2.text ?? ""
        quesList.ques8_3 = label3.text ?? ""
        quesList.ques8_4 = label4.text ?? ""
        quesList.ques8_5 = label5.text ?? ""
        return true
    }

}
