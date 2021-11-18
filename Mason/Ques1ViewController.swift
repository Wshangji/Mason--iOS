//
//  Ques1ViewController.swift
//  Mason
//
//  Created by TongWY on 2021/11/12.
//

import UIKit

class Ques1ViewController: UIViewController {
    @IBOutlet weak var lable: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func changeData(_ sender: UISlider) {
        lable.text = String(Int(slider.value))
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        quesList.ques1 = lable.text ?? ""
        return true
    }
}
