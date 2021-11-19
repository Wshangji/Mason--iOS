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
    
    var is_flag: Bool = false
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
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

    
    @IBAction func registe_btn(_ sender: Any) {
        let username = usernameTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        let email = emailTextField.text ?? ""
        if username.isEmpty || password.isEmpty {
            errorTable.text = "请输入用户名或密码"
        }
        else if password != confirmpwdTextField.text {
            errorTable.text = "密码不一致"
        }
        else if email.isEmpty {
            errorTable.text = "请输入邮箱"
        }
        else {
            errorTable.text = ""
            signUp(username: username, password: password, email: email)
            if is_flag {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                guard let secondVC = storyboard.instantiateViewController(withIdentifier: "confirme") as? ConfirmeViewController else {  return }
                secondVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
                secondVC.paramName = usernameTextField.text ?? ""
                secondVC.paramPassword = passwordTextField.text ?? ""
                self.present(secondVC, animated: true, completion: nil)
            } else {
//                signUp(username: username, password: password, email: email)
       
            }
            
        }
    }
    
    
}
