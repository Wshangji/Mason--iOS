//
//  Ques4ViewController.swift
//  Mason
//
//  Created by TongWY on 2021/11/12.
//

import UIKit

class Ques4ViewController: UIViewController {
    @IBOutlet weak var input: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        quesList.ques4 = input.text ?? ""
        return true
    }
    
    @IBAction func btn_back(_ sender: Any) {
        dismiss(animated: true, completion: nil)

    }
    
}
