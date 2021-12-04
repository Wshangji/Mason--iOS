//
//  PrequestionController.swift
//  Mason
//
//  Created by TongWY on 2021/11/11.
//

import UIKit
import Amplify

class PrequestionController: UIViewController {
    
    @IBOutlet weak var gender1: UIButton!
    @IBOutlet weak var gender2: UIButton!
    @IBOutlet weak var gender3: UIButton!
    @IBOutlet weak var gender4: UIButton!
    
    @IBOutlet weak var race1: UIButton!
    @IBOutlet weak var race2: UIButton!
    @IBOutlet weak var race3: UIButton!
    @IBOutlet weak var race4: UIButton!
    @IBOutlet weak var race5: UIButton!
    
    @IBOutlet weak var eth1: UIButton!
    @IBOutlet weak var eth2: UIButton!
    @IBOutlet weak var eth3: UIButton!
    
    @IBOutlet weak var ses1: UIButton!
    @IBOutlet weak var ses2: UIButton!
    @IBOutlet weak var ses3: UIButton!
    @IBOutlet weak var ses4: UIButton!

    @IBOutlet weak var emp1: UIButton!
    @IBOutlet weak var emp2: UIButton!
    @IBOutlet weak var emp3: UIButton!
    
    @IBOutlet weak var submit: UIButton!
    
    var gender: String = ""
    var race: String = ""
    var eth: String = ""
    var ses: String = ""
    var emp: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        submit.setTitleColor(UIColor(red: 7/255, green: 103/255, blue: 53/255, alpha: 1), for: .normal)
        submit.backgroundColor = UIColor(red: 255/255, green: 205/255, blue: 52/255, alpha: 1)

        // Do any additional setup after loading the view.
    }

    @IBAction func gebder_rbt(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            gender1.isSelected = true
            gender2.isSelected = false
            gender3.isSelected = false
            gender4.isSelected = false
            gender = gender1.currentTitle ?? ""
        case 1:
            gender1.isSelected = false
            gender2.isSelected = true
            gender3.isSelected = false
            gender4.isSelected = false
            gender = gender2.currentTitle ?? ""
        case 2:
            gender1.isSelected = false
            gender2.isSelected = false
            gender3.isSelected = true
            gender4.isSelected = false
            gender = gender3.currentTitle ?? ""
        case 3:
            gender1.isSelected = false
            gender2.isSelected = false
            gender3.isSelected = false
            gender4.isSelected = true
            gender = gender4.currentTitle ?? ""
        default:
            print("gender error")
        }
    }

    @IBAction func race_rbt(_ sender: UIButton) {
        switch sender.tag {
        case 4:
            race1.isSelected = true
            race2.isSelected = false
            race3.isSelected = false
            race4.isSelected = false
            race5.isSelected = false
            race = race1.currentTitle ?? ""
        case 5:
            race1.isSelected = false
            race2.isSelected = true
            race3.isSelected = false
            race4.isSelected = false
            race5.isSelected = false
            race = race2.currentTitle ?? ""
        case 6:
            race1.isSelected = false
            race2.isSelected = false
            race3.isSelected = true
            race4.isSelected = false
            race5.isSelected = false
            race = race3.currentTitle ?? ""
        case 7:
            race1.isSelected = false
            race2.isSelected = false
            race3.isSelected = false
            race4.isSelected = true
            race5.isSelected = false
            race = race4.currentTitle ?? ""
        case 8:
            race1.isSelected = false
            race2.isSelected = false
            race3.isSelected = false
            race4.isSelected = false
            race5.isSelected = true
            race = race5.currentTitle ?? ""
        default:
            print("error")
        }
    }
    
    @IBAction func eth_rbt(_ sender: UIButton) {
        switch sender.tag {
        case 9:
            eth1.isSelected = true
            eth2.isSelected = false
            eth3.isSelected = false
            eth = eth1.currentTitle ?? ""
        case 10:
            eth1.isSelected = false
            eth2.isSelected = true
            eth3.isSelected = false
            eth = eth2.currentTitle ?? ""
        case 11:
            eth1.isSelected = false
            eth2.isSelected = false
            eth3.isSelected = true
            eth = eth3.currentTitle ?? ""
        default:
            print("error")
        }
    }

    @IBAction func ses_rbt(_ sender: UIButton) {
        switch sender.tag {
        case 12:
            ses1.isSelected = true
            ses2.isSelected = false
            ses3.isSelected = false
            ses4.isSelected = false
            ses = ses1.currentTitle ?? ""
        case 13:
            ses1.isSelected = false
            ses2.isSelected = true
            ses3.isSelected = false
            ses4.isSelected = false
            ses = ses2.currentTitle ?? ""
        case 14:
            ses1.isSelected = false
            ses2.isSelected = false
            ses3.isSelected = true
            ses4.isSelected = false
            ses = ses3.currentTitle ?? ""
        case 15:
            ses1.isSelected = false
            ses2.isSelected = false
            ses3.isSelected = false
            ses4.isSelected = true
            ses = ses4.currentTitle ?? ""
        default:
            print("error")
        }
    }

    @IBAction func emp_rbt(_ sender: UIButton) {
        switch sender.tag {
        case 16:
            emp1.isSelected = true
            emp2.isSelected = false
            emp3.isSelected = false
            emp = emp1.currentTitle ?? ""
        case 17:
            emp1.isSelected = false
            emp2.isSelected = true
            emp3.isSelected = false
            emp = emp2.currentTitle ?? ""
        case 18:
            emp1.isSelected = false
            emp2.isSelected = false
            emp3.isSelected = true
            emp = emp2.currentTitle ?? ""
        default:
            print("error")
        }
    }
    
    @IBAction func submit(_ sender: Any) {
        
        savePerson(per:
                    Perception(id: Amplify.Auth.getCurrentUser()!.userId,
                                   name: Amplify.Auth.getCurrentUser()!.username,
                                   gender: gender,
                                   race: race,
                                   ethnicity: eth,
                                   ses: ses,
                                   eigenstates: emp),
                   completion: {
            (flag) -> Void in
            
            if flag {
                DispatchQueue.main.async {
                    self.jumpHome()
                    
                }
            } else {
                
            }
            
        })
    }
    
    // 跳转至主页
    func jumpHome() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let secondVC = storyboard.instantiateViewController(withIdentifier: "main_view") as? TapBarController else {  return }
        secondVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        self.present(secondVC, animated: true, completion: nil)
    }
   
}
