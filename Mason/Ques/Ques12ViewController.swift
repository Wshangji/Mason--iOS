//
//  Ques12ViewController.swift
//  Mason
//
//  Created by TongWY on 2022/8/25.
//

import UIKit
import Amplify
import JFPopup

class Ques12ViewController: UIViewController {
    @IBOutlet weak var seekbar1: UISlider!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var seekbar2: UISlider!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var seekbar3: UISlider!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var seekbar4: UISlider!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var seekbar5: UISlider!
    @IBOutlet weak var label5: UILabel!

    @IBOutlet weak var btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        btn.setTitleColor(UIColor(red: 7/255, green: 103/255, blue: 53/255, alpha: 1), for: .normal)
        btn.backgroundColor = UIColor(red: 255/255, green: 205/255, blue: 52/255, alpha: 1)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeData(_ sender: UISlider) {
        switch sender.tag {
        case 1:
            label1.text = String(Int(seekbar1.value))
        case 2:
            label2.text = String(Int(seekbar2.value))
        case 3:
            label3.text = String(Int(seekbar3.value))
        case 4:
            label4.text = String(Int(seekbar4.value))
        case 5:
            label5.text = String(Int(seekbar5.value))
        default:
            print("error")
        }
    }
    
    // 跳转判断
    @IBAction func btn_onClick(_ sender: Any) {
        quesList.ques12_1 = label1.text ?? ""
        quesList.ques12_2 = label2.text ?? ""
        quesList.ques12_3 = label3.text ?? ""
        quesList.ques12_4 = label4.text ?? ""
        quesList.ques12_5 = label5.text ?? ""
        
        if quesList.ques12_1.isEmpty || quesList.ques12_2.isEmpty || quesList.ques12_3.isEmpty || quesList.ques12_4.isEmpty || quesList.ques12_5.isEmpty {
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

            JFPopupView.popup.loading()
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        // 保存问卷
                        saveQues(questions: Questions(
                            name: Amplify.Auth.getCurrentUser()!.username,
                            pro1: quesList.ques1,
                            pro2: quesList.ques2,
                            pro3: quesList.ques3,
                            pro4: quesList.ques4,
                            pro5: quesList.ques5,
                            pro6_1: quesList.ques6_1,
                            pro6_2: quesList.ques6_2,
                            pro7: quesList.ques7,
                            pro8: quesList.ques8,
                            pro9: quesList.ques9,
                            pro10_1: quesList.ques10_1,
                            pro10_2: quesList.ques10_2,
                            pro10_3: quesList.ques10_3,
                            pro10_4: quesList.ques10_4,
                            pro11_1: quesList.ques11_1,
                            pro11_2: quesList.ques11_2,
                            pro11_3: quesList.ques11_3,
                            pro11_4: quesList.ques11_4,
                            pro11_5: quesList.ques11_5,
                            pro12_1: quesList.ques12_1,
                            pro12_2: quesList.ques12_2,
                            pro12_3: quesList.ques12_3,
                            pro12_4: quesList.ques12_4,
                            pro12_5: quesList.ques12_5,
                            updatedAt: Temporal.DateTime.now()
                        ), completion: {
                            (flag) -> Void in

                            if flag {
                                JFPopupView.popup.hideLoading()
                                remendMe()
                                DispatchQueue.main.async {
                                    self.jumpFinish()
                                }
                            } else {
                                JFPopupView.popup.hideLoading()
                                JFPopupView.popup.toast(hit: "Please check your network connection and try loading again.")
                            }
                        })

                    }
            
        }
    }
    
    // 跳转完成
    func jumpFinish() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let secondVC = storyboard.instantiateViewController(withIdentifier: "Finish") as? FinishViewController else {  return }
        secondVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        self.present(secondVC, animated: true, completion: nil)
    }
}
