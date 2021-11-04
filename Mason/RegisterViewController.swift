//
//  RegisterViewController.swift
//  Mason
//
//  Created by TongWY on 2021/11/3.
//

import UIKit

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
    

    // The function judging Page is or not jump
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        let username = usernameTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        let email = emailTextField.text ?? ""
        
//        if identifier == "Confirme" {
//            if username.isEmpty || password.isEmpty {
//                errorTable.text = "请输入用户名或密码"
//                return false
//            }
//
//            if password != confirmpwdTextField.text {
//                errorTable.text = "密码不一致"
//                return false
//            }
//            if email.isEmpty {
//                errorTable.text = "请输入邮箱"
//                return false
//            }
//            errorTable.text = ""
//        }
        return true
    }

}
