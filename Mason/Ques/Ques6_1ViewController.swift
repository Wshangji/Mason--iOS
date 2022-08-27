//
//  Ques6_1ViewController.swift
//  Mason
//
//  Created by TongWY on 2021/11/15.
//

import UIKit
import Amplify
import SwiftUI
import JFPopup

class Ques6_1ViewController: UIViewController {
    
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var input: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        //隐藏键盘,只要有键盘弹出,点击空白出就会隐藏键盘
        self.hideKeyboardWhenTappedAround()
        
        btn.setTitleColor(UIColor(red: 7/255, green: 103/255, blue: 53/255, alpha: 1), for: .normal)
        btn.backgroundColor = UIColor(red: 255/255, green: 205/255, blue: 52/255, alpha: 1)
    }
    
    // 跳转判断
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        quesList.ques6_1 = input.text ?? ""
        
        if quesList.ques6_1.isEmpty {
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
