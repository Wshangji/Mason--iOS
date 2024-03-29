//
//  ConfirmeViewController.swift
//  Mason
//
//  Created by TongWY on 2021/11/3.
//

import UIKit
import Amplify
import JFPopup

class ConfirmeViewController: UIViewController {
    @IBOutlet weak var confirmLable: UITextField!
    @IBOutlet weak var errorLable: UILabel!
    @IBOutlet weak var regeser: UIButton!
    
    
    var paramName:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //隐藏键盘,只要有键盘弹出,点击空白出就会隐藏键盘
        self.hideKeyboardWhenTappedAround()

        regeser.setTitleColor(UIColor(red: 7/255, green: 103/255, blue: 53/255, alpha: 1), for: .normal)
        regeser.backgroundColor = UIColor(red: 255/255, green: 205/255, blue: 52/255, alpha: 1)
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func confirm_btn(_ sender: Any) {
        
        let confirm = confirmLable.text ?? ""
        if confirm.isEmpty {
            errorLable.text = "please enter verification code"
        }
        else {
            JFPopupView.popup.loading()
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        confirmSignUp(for: self.paramName, with: confirm, completion:{
                            (flag) -> Void in
                            
                            if flag {
                                JFPopupView.popup.hideLoading()
                                DispatchQueue.main.async {
                                    self.jump()
                                }
                            } else {
                                JFPopupView.popup.hideLoading()
                                self.errorLable.text = "regester failed"
                            }
                            
                        })
                    }
        }
        
    }
    
    func jump() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let secondVC = storyboard.instantiateViewController(withIdentifier: "login") as? LoginViewController else {  return }
        secondVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        self.present(secondVC, animated: true, completion: nil)
    }
    
}
