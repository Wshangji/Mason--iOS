//
//  Ques5ViewController.swift
//  Mason
//
//  Created by TongWY on 2021/11/15.
//

import UIKit
import JFPopup

class Ques5ViewController: UIViewController {
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btn.setTitleColor(UIColor(red: 7/255, green: 103/255, blue: 53/255, alpha: 1), for: .normal)
        btn.backgroundColor = UIColor(red: 255/255, green: 205/255, blue: 52/255, alpha: 1)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func radioBtn(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            btn1.isSelected = true
            btn2.isSelected = false
            btn3.isSelected = false
            btn4.isSelected = false
            btn5.isSelected = false
            quesList.ques5 = btn1.currentTitle ?? ""
        case 2:
            btn1.isSelected = false
            btn2.isSelected = true
            btn3.isSelected = false
            btn4.isSelected = false
            btn5.isSelected = false
            quesList.ques5 = btn2.currentTitle ?? ""
        case 3:
            btn1.isSelected = false
            btn2.isSelected = false
            btn3.isSelected = true
            btn4.isSelected = false
            btn5.isSelected = false
            quesList.ques5 = btn3.currentTitle ?? ""
        case 4:
            btn1.isSelected = false
            btn2.isSelected = false
            btn3.isSelected = false
            btn4.isSelected = true
            btn5.isSelected = false
            quesList.ques5 = btn4.currentTitle ?? ""
        case 5:
            btn1.isSelected = false
            btn2.isSelected = false
            btn3.isSelected = false
            btn4.isSelected = false
            btn5.isSelected = true
            quesList.ques5 = btn5.currentTitle ?? ""
        default:
            print("error")
        }
    }
    
    // 跳转判断
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if quesList.ques5.isEmpty {
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
