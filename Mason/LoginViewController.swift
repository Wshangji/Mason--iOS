//
//  LoginViewController.swift
//  Mason
//
//  Created by TongWY on 2021/11/3.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    // The function judging Page is or not jump
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        let username = usernameTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        
//        if identifier == "LoginSuccess" {
//            if username.isEmpty || password.isEmpty {
//                errorLabel.text = "请输入用户名或密码"
//                return false
//            }
//            errorLabel.text = ""
//        }
        return true
    }

}
