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
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
