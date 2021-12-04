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
    @IBOutlet weak var btn_yes: UIButton!
    @IBOutlet weak var btn_no: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        btn_yes.setTitleColor(UIColor(red: 7/255, green: 103/255, blue: 53/255, alpha: 1), for: .normal)
        
        btn_no.setTitleColor(UIColor.black, for: .normal)

    }
    
    @IBAction func context_yes(_ sender: Any) {
        
        saveUser(user: User(
            id: Amplify.Auth.getCurrentUser()!.userId,
            name: Amplify.Auth.getCurrentUser()!.username,
            isAgree: true
        ), completion: {
            (flag) -> Void in
            if flag {
                DispatchQueue.main.async {
                    self.jumpMessage()
                }
            } else {
                
            }
        })
        
    }
    
    @IBAction func context_no(_ sender: Any) {
        signOutLocally(completion: {
            (flag) -> Void in })
        jumpLogin()
    }
    
    // 返回登陆界面
    func jumpLogin() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let secondVC = storyboard.instantiateViewController(withIdentifier: "login") as? LoginViewController else {  return }
        secondVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        self.present(secondVC, animated: true, completion: nil)
    }
    
    // 跳转用户信息界面
    func jumpMessage() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let secondVC = storyboard.instantiateViewController(withIdentifier: "message") as? PrequestionController else {  return }
        secondVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        self.present(secondVC, animated: true, completion: nil)
    }
}
