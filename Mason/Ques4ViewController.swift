//
//  Ques4ViewController.swift
//  Mason
//
//  Created by TongWY on 2021/11/12.
//

import UIKit

class Ques4ViewController: UIViewController {
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        btn.setTitleColor(UIColor(red: 7/255, green: 103/255, blue: 53/255, alpha: 1), for: .normal)
        btn.backgroundColor = UIColor(red: 255/255, green: 205/255, blue: 52/255, alpha: 1)
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
