//
//  LoginViewController.swift
//  Mason
//
//  Created by TongWY on 2021/11/3.
//

import UIKit
import Amplify

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
            // 调用登录方法
            signIn(username: username, password: password, completion: {
                (flag) -> Void in
                // 登录成功
                if flag {
                    DispatchQueue.main.async {
                        self.jump()
                    }
                } else {
                    self.errorLabel.text = "Login failed"
                }
            })
        }
    }
    
    func jump() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let secondVC = storyboard.instantiateViewController(withIdentifier: "main_view") as? TapBarController else {  return }
        secondVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        self.present(secondVC, animated: true, completion: nil)
    }

}