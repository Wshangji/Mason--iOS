//
//  Ques4ViewController.swift
//  Mason
//
//  Created by TongWY on 2021/11/12.
//

import UIKit
import JFPopup

class Ques4ViewController: UIViewController {
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var btn_1: UIButton!
    @IBOutlet weak var btn_2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        btn.setTitleColor(UIColor(red: 7/255, green: 103/255, blue: 53/255, alpha: 1), for: .normal)
        btn.backgroundColor = UIColor(red: 255/255, green: 205/255, blue: 52/255, alpha: 1)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func radioBtn(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            btn_1.isSelected = true
            btn_2.isSelected = false
            quesList.ques4 = btn_1.currentTitle ?? ""
        case 2:
            btn_1.isSelected = false
            btn_2.isSelected = true
            quesList.ques4 = btn_2.currentTitle ?? ""
        default:
            print("erroe")
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if quesList.ques4.isEmpty {
            JFPopupView.popup.alert {[
                       .subTitle("Please complete questions"),
                       .showCancel(false),
                       .confirmAction([
                           .text("yes"),
                           .tapActionCallback({
//                               JFPopupView.popup.toast(hit: "我知道了")
                           })
                       ])
                   ]}
        } else {
            return true
        }
        return false
    }
    
}
