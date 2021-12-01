//
//  RegisterViewController.swift
//  Mason
//
//  Created by TongWY on 2021/11/3.
//

import UIKit
import Amplify

class RegisterViewController: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmpwdTextField: UITextField!
    @IBOutlet weak var btn_next: UIButton!
    
    @IBOutlet weak var errorTable: UILabel!
    
    var is_flag: Bool = false
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 更改按钮样式
        btn_next.setTitleColor(UIColor(red: 7/255, green: 103/255, blue: 53/255, alpha: 1), for: .normal)
        btn_next.backgroundColor = UIColor(red: 255/255, green: 205/255, blue: 52/255, alpha: 1)
        
    }
    
    // AWS注册方法
    func signUp(username: String, password: String, email: String) {
        let userAttributes = [AuthUserAttribute(.email, value: email)]
        let options = AuthSignUpRequest.Options(userAttributes: userAttributes)
        Amplify.Auth.signUp(username: username, password: password, options: options) { result in
            switch result {
            case .success(let signUpResult):
                if case let .confirmUser(deliveryDetails, _) = signUpResult.nextStep {
                    print("Delivery details \(String(describing: deliveryDetails))")
                } else {
                    print("SignUp Complete")
                }
                self.is_flag = true
            case .failure(let error):
                print("An error occurred while registering a user \(error)")
            }
        }
    }

    // 注册button监听事件
    @IBAction func registe_btn(_ sender: Any) {
        let username = usernameTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        let compassword = confirmpwdTextField.text ?? ""
        let email = emailTextField.text ?? ""
        
        if username.isEmpty {
            errorTable.text = "Please enter username"
        } else if password.isEmpty {
            errorTable.text = "Please enter password"
        } else if compassword.isEmpty {
            errorTable.text = "Please enter ponfirm password"
        } else if email.isEmpty {
            errorTable.text = "Please enter email"
        } else if !email.isValidateEmail() {
            errorTable.text = "Please enter an e-mail address in the format username@domain.com."
        } else if password != compassword {
            errorTable.text = "Those passwords didn’t match. Try again."
        } else {
            // 调用注册方法
            signUp(username: username, password: password, email: email)
            if is_flag {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                guard let secondVC = storyboard.instantiateViewController(withIdentifier: "confirme") as? ConfirmeViewController else {  return }
                secondVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
                secondVC.paramName = usernameTextField.text ?? ""
                secondVC.paramPassword = passwordTextField.text ?? ""
                self.present(secondVC, animated: true, completion: nil)
            } else {
                errorTable.text = "注册失败"
            }
        }
        
    }
    
    // 返回登陆界面
    @IBAction func loginNow(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
