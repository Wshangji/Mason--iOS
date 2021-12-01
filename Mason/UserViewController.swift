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
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var changPass: UIButton!
    @IBOutlet weak var forgetPass: UIButton!
    @IBOutlet weak var about: UIButton!
    @IBOutlet weak var privateBtn: UIButton!
    @IBOutlet weak var signOut: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // name显示框个性化定制
        nameLabel.backgroundColor = UIColor(red: 255/255, green: 205/255, blue: 52/255, alpha: 1)
        
        nameLabel.layer.cornerRadius = 4
        
        // 按钮更改样式
        changPass.setTitleColor(UIColor(red: 7/255, green: 103/255, blue: 53/255, alpha: 1), for: .normal)
        changPass.backgroundColor = UIColor(red: 255/255, green: 205/255, blue: 52/255, alpha: 1)
        
        forgetPass.setTitleColor(UIColor(red: 7/255, green: 103/255, blue: 53/255, alpha: 1), for: .normal)
        forgetPass.backgroundColor = UIColor(red: 255/255, green: 205/255, blue: 52/255, alpha: 1)
        
        about.setTitleColor(UIColor(red: 7/255, green: 103/255, blue: 53/255, alpha: 1), for: .normal)
        about.backgroundColor = UIColor(red: 255/255, green: 205/255, blue: 52/255, alpha: 1)
        
        signOut.setTitleColor(UIColor(red: 7/255, green: 103/255, blue: 53/255, alpha: 1), for: .normal)
        signOut.backgroundColor = UIColor(red: 255/255, green: 205/255, blue: 52/255, alpha: 1)
    }
    
    // AWS退出登陆方法
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
    
    @IBAction func peivate_btn_click(_ sender: Any) {
        UIApplication.shared.openURL(URL(string: "https://www.termsfeed.com/live/aadc85b9-ea4a-4d85-98f5-12516a85fb53")!)
    }
    
    
    // 登出button监听事件
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
