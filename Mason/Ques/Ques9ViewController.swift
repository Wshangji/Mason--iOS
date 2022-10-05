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
    
    @IBAction func jumpButton(_ sender: Any) {
        if quesList.ques9.isEmpty {
            JFPopupView
                .popup
                .alert {[
                    .subTitle("Please complete questions"),
                    .showCancel(false),
                    .confirmAction([
                    .text("Yes"),
                    .tapActionCallback({
        //                    JFPopupView.popup.toast(hit: "我知道了")
                        })
                    ])
                ]}
        } else {
            JFPopupView.popup.loading()
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                quaryPersionEmployedbyID(perid: Amplify.Auth.getCurrentUser()!.userId, completion: {
                    (istrue) -> Void in
                    
                    if istrue {
                        JFPopupView.popup.hideLoading()
                        DispatchQueue.main.async {
                            self.jumpQues10()
                        }
                    } else {
                        JFPopupView.popup.hideLoading()
                        DispatchQueue.main.async {
                            self.jumpQues11()
                        }
                    }
                })
            }
        }
    }
    // 跳转问题10
    func jumpQues10() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let secondVC = storyboard.instantiateViewController(withIdentifier: "Ques10") as? Ques10ViewController else {  return }
        secondVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        self.present(secondVC, animated: true, completion: nil)
    }
    
    // 跳转问题11
    func jumpQues11() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let secondVC = storyboard.instantiateViewController(withIdentifier: "Ques11") as? Ques11ViewController else {  return }
        secondVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        self.present(secondVC, animated: true, completion: nil)
    }
}

