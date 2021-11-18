//
//  ConfirmeViewController.swift
//  Mason
//
//  Created by TongWY on 2021/11/3.
//

import UIKit
import Amplify

class ConfirmeViewController: UIViewController {
    @IBOutlet weak var confirmLable: UITextField!
    @IBOutlet weak var errorLable: UILabel!
    var param:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        print(param)
        if identifier == "ToPer" {
            let confirm = confirmLable.text ?? ""
            if confirm.isEmpty {
                errorLable.text = "请输入验证码"
            }
            else {
                if confirmSignUp(for: param, with: confirm) {
                    return true
                } else {
                    errorLable.text = "验证码错误"
                }
            }
        }
        return false
    }
    
    func confirmSignUp(for username: String, with confirmationCode: String) -> Bool{
        var flag:Bool = false
        Amplify.Auth.confirmSignUp(for: username, confirmationCode: confirmationCode) { result in
            switch result {
            case .success:
                flag = true
                print("Confirm signUp succeeded")
            case .failure(let error):
                flag = false
                print("An error occurred while confirming sign up \(error)")
            }
        }
        return flag
    }
}
