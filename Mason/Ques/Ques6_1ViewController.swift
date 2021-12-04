//
//  Ques6_1ViewController.swift
//  Mason
//
//  Created by TongWY on 2021/11/15.
//

import UIKit
import Amplify
import SwiftUI

class Ques6_1ViewController: UIViewController {
    @IBOutlet weak var btn_yes: UIButton!
    @IBOutlet weak var btn_no: UIButton!
    @IBOutlet weak var btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btn.setTitleColor(UIColor(red: 7/255, green: 103/255, blue: 53/255, alpha: 1), for: .normal)
        btn.backgroundColor = UIColor(red: 255/255, green: 205/255, blue: 52/255, alpha: 1)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnRadio(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            btn_yes.isSelected = true
            btn_no.isSelected = false
            quesList.ques6_1 = btn_yes.currentTitle ?? ""
        case 0:
            btn_yes.isSelected = false
            btn_no.isSelected = true
            quesList.ques6_1 = btn_yes.currentTitle ?? ""
        default:
            print("error")
        }
    }

    @IBAction func onClick(_ sender: Any) {
        if btn_yes.isSelected {
            jumpQues6_2()
        } else {
            quaryPersionbyID(perid: Amplify.Auth.getCurrentUser()!.userId, completion: {
                (flag) -> Void in
                
                if flag {
                    DispatchQueue.main.async {
                        self.jumpQues7()
                    }
                } else {
                    DispatchQueue.main.async {
                        self.jumpQues8()
                    }
                }
            })
        }
    }
    
    // 跳转问题6_2
    func jumpQues6_2() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let secondVC = storyboard.instantiateViewController(withIdentifier: "Ques6_2") as? Ques6_2ViewController else {  return }
        secondVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        self.present(secondVC, animated: true, completion: nil)
    }
    
    // 跳转问题7
    func jumpQues7() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let secondVC = storyboard.instantiateViewController(withIdentifier: "Ques7") as? Ques7ViewController else {  return }
        secondVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        self.present(secondVC, animated: true, completion: nil)
    }
    
    // 跳转问题8
    func jumpQues8() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let secondVC = storyboard.instantiateViewController(withIdentifier: "Ques8") as? Ques8ViewController else {  return }
        secondVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        self.present(secondVC, animated: true, completion: nil)
    }
    
}
