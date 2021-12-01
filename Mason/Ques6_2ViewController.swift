//
//  Ques6_2ViewController.swift
//  Mason
//
//  Created by TongWY on 2021/11/15.
//

import UIKit
import Amplify

class Ques6_2ViewController: UIViewController {
    @IBOutlet weak var btn_y: UIButton!
    @IBOutlet weak var btn_n: UIButton!
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
            btn_y.isSelected = true
            btn_n.isSelected = false
            quesList.ques6_2 = btn_y.currentTitle ?? ""
        case 0:
            btn_y.isSelected = false
            btn_n.isSelected = true
            quesList.ques6_2 = btn_n.currentTitle ?? ""
        default:
            print("error")
        }
    }

    @IBAction func onClick(_ sender: Any) {
        Amplify.DataStore.query(Perception.self, byId: Amplify.Auth.getCurrentUser()!.userId) {
            switch $0 {
            case .success(let result):
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                if result?.ethnicity != "Not currently employed" {
                    guard let secondVC = storyboard.instantiateViewController(withIdentifier: "Ques7") as? Ques7ViewController else {  return }
                    secondVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
                    self.present(secondVC, animated: true, completion: nil)
                } else {
                    guard let secondVC = storyboard.instantiateViewController(withIdentifier: "Ques8") as? Ques8ViewController else {  return }
                    secondVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
                    self.present(secondVC, animated: true, completion: nil)
                }
            case .failure(let error):
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                guard let secondVC = storyboard.instantiateViewController(withIdentifier: "Ques8") as? Ques8ViewController else {  return }
                secondVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
                self.present(secondVC, animated: true, completion: nil)
                print("Error on query() for type Post - \(error.localizedDescription)")
            }
        }
    }
    
}
