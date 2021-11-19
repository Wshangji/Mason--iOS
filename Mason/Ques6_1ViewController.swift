//
//  Ques6_1ViewController.swift
//  Mason
//
//  Created by TongWY on 2021/11/15.
//

import UIKit

class Ques6_1ViewController: UIViewController {
    @IBOutlet weak var btn_yes: UIButton!
    @IBOutlet weak var btn_no: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if btn_yes.isSelected {
            guard let secondVC = storyboard.instantiateViewController(withIdentifier: "Ques6_2") as? Ques6_2ViewController else {  return }
            secondVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            self.present(secondVC, animated: true, completion: nil)
        } else {
            guard let secondVC = storyboard.instantiateViewController(withIdentifier: "Ques7") as? Ques7ViewController else {  return }
            secondVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
            self.present(secondVC, animated: true, completion: nil)
        }
    }
    
}
