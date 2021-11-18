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
    
    @IBOutlet weak var errorTable: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //在这个方法中给新页面传递参数
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.destination is ConfirmeViewController){
            let vc = segue.destination as! ConfirmeViewController
            vc.param = usernameTextField.text!
        }
    }

    // The function judging Page is or not jump
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        let username = usernameTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        let email = emailTextField.text ?? ""
        
        if identifier == "Confirme" {
            if username.isEmpty || password.isEmpty {
                errorTable.text = "请输入用户名或密码"
                return false
            }
            else if password != confirmpwdTextField.text {
                errorTable.text = "密码不一致"
            }
            else if email.isEmpty {
                errorTable.text = "请输入邮箱"
            }
            else {
                errorTable.text = ""
                if signUp(username: username, password: password, email: email) {
                    return true
                } else {
                    errorTable.text = "注册失败"
                }
            }
        }
        if identifier == "context" {
            return true
        }
        return false
    }
    
    func signUp(username: String, password: String, email: String) -> Bool{
        var flag: Bool = false
        let userAttributes = [AuthUserAttribute(.email, value: email)]
        let options = AuthSignUpRequest.Options(userAttributes: userAttributes)
        Amplify.Auth.signUp(username: username, password: password, options: options){ result in
            switch result {
            case .success(let signUpResult):
                if case let .confirmUser(deliveryDetails, _) = signUpResult.nextStep {
                    print("Delivery details \(String(describing: deliveryDetails))")
                } else {
                    print("SignUp Complete")
                }
                return flag = true
            case .failure(let error):
                print("An error occurred while registering a user \(error)")
                return flag = false
            }
        }
        return flag
    }
    
}
