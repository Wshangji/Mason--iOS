//
//  Ques6_2ViewController.swift
//  Mason
//
//  Created by TongWY on 2021/11/15.
//

import UIKit

class Ques6_2ViewController: UIViewController {
    @IBOutlet weak var btn_y: UIButton!
    @IBOutlet weak var btn_n: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btnRadio(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            btn_y.isSelected = true
            btn_n.isSelected = false
            quesList.ques6_2 = btn_y.currentTitle ?? ""
        case 0:
            btn_y.isSelected = false
            btn_n.isSelected = true
            quesList.ques6_2 = btn_n.currentTitle ?? ""
        default:
            print("error")
        }
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return true
    }
}
