//
//  Ques7ViewController.swift
//  Mason
//
//  Created by TongWY on 2021/11/15.
//

import UIKit
import JFPopup
import Amplify

class Ques7ViewController: UIViewController {
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        btn.setTitleColor(UIColor(red: 7/255, green: 103/255, blue: 53/255, alpha: 1), for: .normal)
        btn.backgroundColor = UIColor(red: 255/255, green: 205/255, blue: 52/255, alpha: 1)
        
    }
    
    @IBAction func radioBtn(_ sender: UIButton) {
            switch sender.tag {
            case 1:
                btn1.isSelected = true
                btn2.isSelected = false
                btn3.isSelected = false
                btn4.isSelected = false
                btn5.isSelected = false
                btn6.isSelected = false
                btn7.isSelected = false
                quesList.ques7 = btn1.currentTitle ?? ""
            case 2:
                btn1.isSelected = false
                btn2.isSelected = true
                btn3.isSelected = false
                btn4.isSelected = false
                btn5.isSelected = false
                btn6.isSelected = false
                btn7.isSelected = false
                quesList.ques7 = btn2.currentTitle ?? ""
            case 3:
                btn1.isSelected = false
                btn2.isSelected = false
                btn3.isSelected = true
                btn4.isSelected = false
                btn5.isSelected = false
                btn6.isSelected = false
                btn7.isSelected = false
                quesList.ques7 = btn3.currentTitle ?? ""
            case 4:
                btn1.isSelected = false
                btn2.isSelected = false
                btn3.isSelected = false
                btn4.isSelected = true
                btn5.isSelected = false
                btn6.isSelected = false
                btn7.isSelected = false
                quesList.ques7 = btn4.currentTitle ?? ""
            case 5:
                btn1.isSelected = false
                btn2.isSelected = false
                btn3.isSelected = false
                btn4.isSelected = false
                btn5.isSelected = true
                btn6.isSelected = false
                btn7.isSelected = false
                quesList.ques7 = btn5.currentTitle ?? ""
            case 6:
                btn1.isSelected = false
                btn2.isSelected = false
                btn3.isSelected = false
                btn4.isSelected = false
                btn5.isSelected = false
                btn6.isSelected = true
                btn7.isSelected = false
                quesList.ques7 = btn6.currentTitle ?? ""
            case 7:
                btn1.isSelected = false
                btn2.isSelected = false
                btn3.isSelected = false
                btn4.isSelected = false
                btn5.isSelected = false
                btn6.isSelected = false
                btn7.isSelected = true
                quesList.ques7 = btn7.currentTitle ?? ""
            default:
                print("error")
            }
        }
    
    // 跳转判断
    @IBAction func btn_onClick(_ sender: Any) {
        if quesList.ques7.isEmpty {
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
                        quaryPersionEigenstatesbyID(perid: Amplify.Auth.getCurrentUser()!.userId, completion: {
                            (flag) -> Void in
                            
                            if flag {
                                JFPopupView.popup.hideLoading()
                                DispatchQueue.main.async {
                                    self.jumpQues8()
                                }
                            } else {
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
                                            self.jumpQues9()
                                        }
                                    }
                                })
                            }
                        })
            }
        }
    }
    
    // 跳转问题8
    func jumpQues8() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let secondVC = storyboard.instantiateViewController(withIdentifier: "Ques8") as? Ques8ViewController else {  return }
        secondVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        self.present(secondVC, animated: true, completion: nil)
    }
    
    // 跳转问题9
    func jumpQues9() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let secondVC = storyboard.instantiateViewController(withIdentifier: "Ques9") as? Ques9ViewController else {  return }
        secondVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        self.present(secondVC, animated: true, completion: nil)
    }
    
    // 跳转问题10
    func jumpQues10() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let secondVC = storyboard.instantiateViewController(withIdentifier: "Ques10") as? Ques10ViewController else {  return }
        secondVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        self.present(secondVC, animated: true, completion: nil)
    }

}
