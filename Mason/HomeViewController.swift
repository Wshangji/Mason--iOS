//
//  HomeViewController.swift
//  Mason
//
//  Created by TongWY on 2021/11/3.
//

import UIKit
import Amplify

class HomeViewController: UIViewController {
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var btn: UIButton!
    
    override func loadView() {
        super.loadView()
        
        Amplify.DataStore.query(User.self, byId: Amplify.Auth.getCurrentUser()!.userId) {
            switch $0 {
            case .success(let result):
                let flag = result?.isAgree ?? false
                if flag {
                } else {
                    let storyboard = UIStoryboard(name: "Main", bundle: nil)
                    guard let secondVC = storyboard.instantiateViewController(withIdentifier: "PerContext") as? PerContextViewController else {  return }
                    secondVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
                    self.present(secondVC, animated: true, completion: nil)
                }
            case .failure(let error):
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                guard let secondVC = storyboard.instantiateViewController(withIdentifier: "PerContext") as? PerContextViewController else {  return }
                secondVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
                self.present(secondVC, animated: true, completion: nil)
                
                print("Error on query() for type Post - \(error.localizedDescription)")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btn.setTitleColor(UIColor(red: 7/255, green: 103/255, blue: 53/255, alpha: 1), for: .normal)
        btn.backgroundColor = UIColor(red: 255/255, green: 205/255, blue: 52/255, alpha: 1)
    }
    
    @IBAction func changeData(_ sender: UISlider) {
        label.text = String(Int(slider.value))
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        quesList.ques1 = label.text ?? ""
        return true
    }

}
