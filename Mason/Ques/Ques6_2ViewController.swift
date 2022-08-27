//
//  Ques6_2ViewController.swift
//  Mason
//
//  Created by TongWY on 2021/11/15.
//

import UIKit
import Amplify
import JFPopup

class Ques6_2ViewController: UIViewController {
    
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
            quesList.ques6_2 = btn_1.currentTitle ?? ""
        case 2:
            btn_1.isSelected = false
            btn_2.isSelected = true
            quesList.ques6_2 = btn_2.currentTitle ?? ""
        default:
            print("erroe")
        }
    }
    
    // 跳转判断
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        if quesList.ques6_2.isEmpty {
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

//    @IBAction func onClick(_ sender: Any) {
//
//        if quesList.ques6_2.isEmpty {
//            JFPopupView.popup.alert {[
//                       .subTitle("Please complete questions"),
//                       .showCancel(false),
//                       .confirmAction([
//                           .text("yes"),
//                           .tapActionCallback({
////                               JFPopupView.popup.toast(hit: "我知道了")
//                           })
//                       ])
//                   ]}
//        } else {
//            quaryPersionbyID(perid: Amplify.Auth.getCurrentUser()!.userId, completion: {
//                (flag) -> Void in
//
//                if flag {
//                    DispatchQueue.main.async {
//                        self.jumpQues7()
//                    }
//                } else {
//                    DispatchQueue.main.async {
//                        self.jumpQues8()
//                    }
//                }
//            })
//        }
//    }
//
    // 跳转问题7
    func jumpQues7() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let secondVC = storyboard.instantiateViewController(withIdentifier: "Ques7") as? Ques7ViewController else {  return }
        secondVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        self.present(secondVC, animated: true, completion: nil)
    }
    
    // 跳转问题8
    func jumpQues8() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let secondVC = storyboard.instantiateViewController(withIdentifier: "Ques8") as? Ques8ViewController else {  return }
        secondVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        self.present(secondVC, animated: true, completion: nil)
    }
    
}
