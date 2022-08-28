//
//  LoginViewController.swift
//  Mason
//
//  Created by TongWY on 2021/11/3.
//

import UIKit
import Amplify
import JFPopup

class LoginViewController: UIViewController {

    @IBOutlet weak var regester: UIButton!
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    // 加载时判断是否已经是登录状态
    override func loadView() {
        super.loadView()
        if (Amplify.Auth.getCurrentUser() != nil) {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            guard let secondVC = storyboard.instantiateViewController(withIdentifier: "main_view") as? TapBarController else {  return }
            secondVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            self.present(secondVC, animated: true, completion: nil)
        }
    }
    
    // 改变按钮样式
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //隐藏键盘,只要有键盘弹出,点击空白出就会隐藏键盘
        self.hideKeyboardWhenTappedAround()
        
        btn.setTitleColor(UIColor(red: 7/255, green: 103/255, blue: 53/255, alpha: 1), for: .normal)
        btn.backgroundColor = UIColor(red: 255/255, green: 205/255, blue: 52/255, alpha: 1)
                
        regester.setTitleColor(UIColor(red: 7/255, green: 103/255, blue: 53/255, alpha: 1), for: .normal)
    }
    
    //登录按钮监听事件
    @IBAction func login_btn(_ sender: Any) {
        let username = usernameTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        
        if username.isEmpty {
            errorLabel.text = "Please enter username"
        } else if password.isEmpty {
            errorLabel.text = "Please enter password"
        } else {
            JFPopupView.popup.loading(hit: "Loading")
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
//                         调用登录方法
                        signIn(username: username, password: password, completion: {
                            (flag) -> Void in
//                             登录成功
                            if flag {
                                
//                                 判断是否同意许可
                                quaryUserbyID(userid: Amplify.Auth.getCurrentUser()!.userId, completion: {
                                    (read) -> Void in
                                    if read {
//                                         跳转主界面
                                        JFPopupView.popup.hideLoading()
                                        DispatchQueue.main.async {
                                            self.jump()
                                        }
                                    } else {
//                                         跳转同意协议
                                        JFPopupView.popup.hideLoading()
                                        DispatchQueue.main.async {
                                            self.jumpPerMessage()
                                        }
                                    }
                                })
                                
                            } else {
                                JFPopupView.popup.hideLoading()
                                self.errorLabel.text = "Login failed"
                            }
                        })
                    }
        }
    }
    
    // 跳转页面函数
    func jump() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let secondVC = storyboard.instantiateViewController(withIdentifier: "main_view") as? TapBarController else {  return }
        secondVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        self.present(secondVC, animated: true, completion: nil)
    }
    
    // 跳转同意协议
    func jumpPerMessage() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let secondVC = storyboard.instantiateViewController(withIdentifier: "PerContext") as? PerContextViewController else {  return }
        secondVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        self.present(secondVC, animated: true, completion: nil)
    }

}
