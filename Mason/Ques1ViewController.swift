//
//  Ques1ViewController.swift
//  Mason
//
//  Created by TongWY on 2021/11/12.
//

import UIKit
import Amplify
import AmplifyPlugins

class Ques1ViewController: UIViewController {
    @IBOutlet weak var lable: UILabel!
    @IBOutlet weak var slider: UISlider!
    
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

        // Do any additional setup after loading the view.
    }
    @IBAction func changeData(_ sender: UISlider) {
        lable.text = String(Int(slider.value))
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        quesList.ques1 = lable.text ?? ""
        return true
    }
    
    @IBAction func btn_back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
}
