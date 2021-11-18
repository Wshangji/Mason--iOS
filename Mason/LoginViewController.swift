//
//  LoginViewController.swift
//  Mason
//
//  Created by TongWY on 2021/11/3.
//

import UIKit
import Amplify

class LoginViewController: UIViewController {

    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    var flag: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    // The function judging Page is or not jump
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        let username = usernameTextField.text ?? ""
        let password = passwordTextField.text ?? ""

        if identifier == "LoginSuccess" {
            if username.isEmpty || password.isEmpty {
                errorLabel.text = ""
                errorLabel.text = "请输入用户名或密码"
                flag = false
            } else {
                errorLabel.text = ""
                signIn(username: username, password: password)
            }
        }
        if identifier == "Regester" {
            flag = true
        }
        return true
    }

    func signIn(username: String, password: String) {
        Amplify.Auth.signIn(username: username, password: password) { result in
            switch result {
            case .success:
                print("Sign in succeeded")
                self.flag = true
            case .failure(let error):
                self.errorLabel.text = "Sign in failed \(error)"
                self.flag = false
            }
        }
    }

}
