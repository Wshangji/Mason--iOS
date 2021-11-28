//
//  Ques7ViewController.swift
//  Mason
//
//  Created by TongWY on 2021/11/15.
//

import UIKit

class Ques7ViewController: UIViewController {
    @IBOutlet weak var input1: UITextField!
    @IBOutlet weak var input2: UITextField!
    @IBOutlet weak var input3: UITextField!
    @IBOutlet weak var input4: UITextField!
    @IBOutlet weak var btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        btn.setTitleColor(UIColor(red: 7/255, green: 103/255, blue: 53/255, alpha: 1), for: .normal)
        btn.backgroundColor = UIColor(red: 255/255, green: 205/255, blue: 52/255, alpha: 1)
        // Do any additional setup after loading the view.
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        quesList.ques7_1 = input1.text ?? ""
        quesList.ques7_2 = input2.text ?? ""
        quesList.ques7_3 = input3.text ?? ""
        quesList.ques7_4 = input4.text ?? ""
        return true
    }
    
    @IBAction func btn_back(_ sender: Any) {
        dismiss(animated: true, completion: nil)

    }

}
