//
//  Ques9ViewController.swift
//  Mason
//
//  Created by TongWY on 2021/11/18.
//

import UIKit
import Amplify
import JFPopup

class Ques9ViewController: UIViewController {
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        btn.setTitleColor(UIColor(red: 7/255, green: 103/255, blue: 53/255, alpha: 1), for: .normal)
        btn.backgroundColor = UIColor(red: 255/255, green: 205/255, blue: 52/255, alpha: 1)
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func btnRadio(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            btn1.isSelected = true
            btn2.isSelected = false
            quesList.ques9 = btn1.currentTitle ?? ""
        case 2:
            btn1.isSelected = false
            btn2.isSelected = true
            quesList.ques9 = btn2.currentTitle ?? ""
        default:
            print("error")
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        if quesList.ques9.isEmpty {
            JFPopupView.popup.alert {[
                       .subTitle("Please complete questions"),
                       .showCancel(false),
                       .confirmAction([
                           .text("Yes"),
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
