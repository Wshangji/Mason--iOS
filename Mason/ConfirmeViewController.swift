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
    @IBOutlet weak var regeser: UIButton!
    
    
    var paramName:String = ""
    var paramPassword:String = ""
    var is_flag:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        regeser.setTitleColor(UIColor(red: 7/255, green: 103/255, blue: 53/255, alpha: 1), for: .normal)
        regeser.backgroundColor = UIColor(red: 255/255, green: 205/255, blue: 52/255, alpha: 1)
        // Do any additional setup after loading the view.
    }
    
    func confirmSignUp(for username: String, with confirmationCode: String) {
        Amplify.Auth.confirmSignUp(for: username, confirmationCode: confirmationCode) { result in
            switch result {
            case .success:
                self.signIn(username: self.paramName, password: self.paramPassword)
                print("Confirm signUp succeeded")
            case .failure(let error):
                print("An error occurred while confirming sign up \(error)")
            }
        }
    }
    
    func signIn(username: String, password: String) {
        Amplify.Auth.signIn(username: username, password: password) { result in
            switch result {
            case .success:
                self.is_flag = true
                print("Sign in succeeded")
            case .failure(let error):
                print("Sign in failed \(error)")
            }
        }
    }
    
    @IBAction func confirm_btn(_ sender: Any) {
        
        let confirm = confirmLable.text ?? ""
        if confirm.isEmpty {
            errorLable.text = "please enter verification code"
        }
        else {
            confirmSignUp(for: paramName, with: confirm)
            if is_flag {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                guard let secondVC = storyboard.instantiateViewController(withIdentifier: "PerContext") as? PerContextViewController else {  return }
                secondVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
                self.present(secondVC, animated: true, completion: nil)
            }
        }
        
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        guard let secondVC = storyboard.instantiateViewController(withIdentifier: "message") as? PrequestionController else {  return }
//        secondVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
//        self.present(secondVC, animated: true, completion: nil)
    }
    
}
