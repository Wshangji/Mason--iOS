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
    
    override func loadView() {
        super.loadView()
        if (Amplify.Auth.getCurrentUser() != nil) {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            guard let secondVC = storyboard.instantiateViewController(withIdentifier: "main_view") as? TapBarController else {  return }
            secondVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            self.present(secondVC, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
                

        // Do any additional setup after loading the view.
    }

    func signIn(username: String, password: String) {
        Amplify.Auth.signIn(username: username, password: password) { result in
            switch result {
            case .success:
                self.flag = true
                print("Sign in succeeded")
            case .failure(let error):
                self.errorLabel.text = "Sign in failed \(error)"
            }
        }
    }
    
    @IBAction func login_btn(_ sender: Any) {
        let username = usernameTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        if username.isEmpty || password.isEmpty {
            errorLabel.text = ""
            errorLabel.text = "Please enter username or password"
        } else {
            errorLabel.text = ""
            signIn(username: username, password: password)
            if flag {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                guard let secondVC = storyboard.instantiateViewController(withIdentifier: "main_view") as? TapBarController else {  return }
                secondVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
                self.present(secondVC, animated: true, completion: nil)
            }
        }
    }
    

}
