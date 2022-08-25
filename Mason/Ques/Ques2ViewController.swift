//
//  Ques2ViewController.swift
//  Mason
//
//  Created by TongWY on 2021/11/12.
//

import UIKit
import JFPopup
import MessageUI

class Ques2ViewController: UIViewController, UINavigationControllerDelegate {
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn: UIButton!
    
    var proes: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btn.setTitleColor(UIColor(red: 7/255, green: 103/255, blue: 53/255, alpha: 1), for: .normal)
        btn.backgroundColor = UIColor(red: 255/255, green: 205/255, blue: 52/255, alpha: 1)
        // Do any additional setup after loading the view.
        /*
        if quesList.judge == 0 {
            let vc = MFMailComposeViewController()
            vc.delegate = self
            vc.setSubject("Contact Us")
            vc.setToRecipients(["shangdtream@gmail.com"])
            present(vc, animated: true)
        }
         */
    }
    
    @IBAction func checkbtn(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            btn1.isSelected = !btn1.isSelected
        case 2:
            btn2.isSelected = !btn2.isSelected
        case 3:
            btn3.isSelected = !btn3.isSelected
        case 4:
            btn4.isSelected = !btn4.isSelected
        case 5:
            btn5.isSelected = !btn5.isSelected
        case 6:
            btn6.isSelected = !btn6.isSelected
        case 7:
            btn7.isSelected = !btn7.isSelected
        case 8:
            btn8.isSelected = !btn8.isSelected
        default:
            print("error")
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if btn1.isSelected {
            proes += btn1.currentTitle ?? ""
        }
        if btn2.isSelected {
            proes += btn2.currentTitle ?? ""
        }
        if btn3.isSelected {
            proes += btn3.currentTitle ?? ""
        }
        if btn4.isSelected {
            proes += btn4.currentTitle ?? ""
        }
        if btn5.isSelected {
            proes += btn5.currentTitle ?? ""
        }
        if btn6.isSelected {
            proes += btn6.currentTitle ?? ""
        }
        if btn7.isSelected {
            proes += btn7.currentTitle ?? ""
        }
        if btn8.isSelected {
            proes += btn8.currentTitle ?? ""
        }
        quesList.ques2 = proes
        
        if quesList.ques2.isEmpty {
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
    
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        
    }
    
}
