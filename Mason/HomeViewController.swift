//
//  HomeViewController.swift
//  Mason
//
//  Created by TongWY on 2021/11/3.
//

import UIKit
import Amplify
import SwiftUI
import UserNotifications

class HomeViewController: UIViewController {
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var btn: UIButton!
    
    
    override func loadView() {
        super.loadView()
        
        quaryUserbyID(userid: Amplify.Auth.getCurrentUser()!.userId, completion: {
            (flag) -> Void in
            if flag {
            } else {
                DispatchQueue.main.async {
                    self.jumpPerMessage()
                }
            }
        })
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        btn.setTitleColor(UIColor(red: 7/255, green: 103/255, blue: 53/255, alpha: 1), for: .normal)
        btn.backgroundColor = UIColor(red: 255/255, green: 205/255, blue: 52/255, alpha: 1)
    }
    
    @IBAction func changeData(_ sender: UISlider) {
        label.text = String(Int(slider.value))
    }
    
    // 跳转Segue判断
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        quesList.ques1 = label.text ?? ""
        return true
    }
    
    func jumpPerMessage() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let secondVC = storyboard.instantiateViewController(withIdentifier: "PerContext") as? PerContextViewController else {  return }
        secondVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        self.present(secondVC, animated: true, completion: nil)
    }

}
