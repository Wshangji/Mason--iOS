//
//  PerContextViewController.swift
//  Mason
//
//  Created by TongWY on 2021/11/19.
//

import UIKit
import Amplify

class PerContextViewController: UIViewController {
    var is_flag:Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func context_yes(_ sender: Any) {
        
        Amplify.DataStore.save(
            User(
                id: Amplify.Auth.getCurrentUser()?.userId ?? "",
                name: Amplify.Auth.getCurrentUser()?.username,
                isAgree: true
            )
        ) {
            switch $0 {
            case .success:
                print("Created a new post successfully")
            case .failure(let error):
                print("Error creating post - \(error.localizedDescription)")
            }
        }
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let secondVC = storyboard.instantiateViewController(withIdentifier: "message") as? PrequestionController else {  return }
        secondVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        self.present(secondVC, animated: true, completion: nil)
    }
    
    @IBAction func context_no(_ sender: Any) {
        
        signOutLocally()
        
        if is_flag {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            guard let secondVC = storyboard.instantiateViewController(withIdentifier: "login") as? LoginViewController else {  return }
            secondVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            self.present(secondVC, animated: true, completion: nil)
        }
    }
    
    func signOutLocally() {
        Amplify.Auth.signOut() { result in
            switch result {
            case .success:
                self.is_flag = true
                print("Successfully signed out")
            case .failure(let error):
                print("Sign out failed with error \(error)")
            }
        }
    }
    
}
