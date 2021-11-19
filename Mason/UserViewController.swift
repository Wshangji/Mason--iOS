//
//  UserViewController.swift
//  Mason
//
//  Created by TongWY on 2021/11/19.
//

import UIKit
import Amplify

class UserViewController: UIViewController {
    var flag:Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func signOutLocally() {
        Amplify.Auth.signOut() { result in
            switch result {
            case .success:
                self.flag = true
                print("Successfully signed out")
            case .failure(let error):
                print("Sign out failed with error \(error)")
            }
        }
    }
    
    @IBAction func sign_out_btn(_ sender: Any) {
        signOutLocally()
        if flag {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            guard let secondVC = storyboard.instantiateViewController(withIdentifier: "login") as? LoginViewController else {  return }
            secondVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            self.present(secondVC, animated: true, completion: nil)
        }
    }
    

}
