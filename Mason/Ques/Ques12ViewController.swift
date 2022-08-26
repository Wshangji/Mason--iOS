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

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        var jump_flag: Bool = true
        
        quesList.ques9_1 = label1.text ?? ""
        quesList.ques9_2 = label2.text ?? ""
        quesList.ques9_3 = label3.text ?? ""
        quesList.ques9_4 = label4.text ?? ""
        quesList.ques9_5 = label5.text ?? ""
        
        if quesList.ques9_1.isEmpty || quesList.ques9_2.isEmpty || quesList.ques9_3.isEmpty || quesList.ques9_4.isEmpty || quesList.ques9_5.isEmpty {
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
//
//            JFPopupView.popup.loading()
//                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
//                        // 保存问卷
//                        saveQues(questions: Questions(
//                            name: Amplify.Auth.getCurrentUser()!.username,
//                            pro1: quesList.ques1,
//                            pro2: quesList.ques2,
//                            pro3: quesList.ques3,
//                            pro4: quesList.ques4,
//                            pro5: quesList.ques5,
//                            pro6_1: quesList.ques6_1,
//                            pro6_2: quesList.ques6_2,
//                            pro7_1: quesList.ques7_1,
//                            pro7_2: quesList.ques7_2,
//                            pro7_3: quesList.ques7_3,
//                            pro7_4: quesList.ques7_4,
//                            pro8_1: quesList.ques8_1,
//                            pro8_2: quesList.ques8_2,
//                            pro8_3: quesList.ques8_3,
//                            pro8_4: quesList.ques8_4,
//                            pro8_5: quesList.ques8_5,
//                            pro9_1: quesList.ques9_1,
//                            pro9_2: quesList.ques9_2,
//                            pro9_3: quesList.ques9_3,
//                            pro9_4: quesList.ques9_4,
//                            pro9_5: quesList.ques9_5
//                        ), completion: {
//                            (flag) -> Void in
//
//                            if flag {
//                                JFPopupView.popup.hideLoading()
//                                jump_flag = true
//                                remendMe()
//                            } else {
//                                JFPopupView.popup.hideLoading()
//                                JFPopupView.popup.toast(hit: "Please check your network connection and try loading again.")
//                            }
//                        })
//
//                    }
            
        }
        
        return jump_flag
    }

}
