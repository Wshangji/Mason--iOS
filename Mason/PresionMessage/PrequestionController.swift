//
//  PrequestionController.swift
//  Mason
//
//  Created by TongWY on 2021/11/11.
//

import UIKit
import Amplify
import JFPopup

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
    
    @IBOutlet weak var ethnicity1: UIButton!
    @IBOutlet weak var ethnicity2: UIButton!
    @IBOutlet weak var ethnicity3: UIButton!
    
    @IBOutlet weak var credits1: UIButton!
    @IBOutlet weak var credits2: UIButton!

    @IBOutlet weak var employs1: UIButton!
    @IBOutlet weak var employs2: UIButton!
    @IBOutlet weak var employs3: UIButton!
    
    @IBOutlet weak var eigenstates1: UIButton!
    @IBOutlet weak var eigenstates2: UIButton!
    
    @IBOutlet weak var submit: UIButton!
    
    
    var gender: String = ""
    var race: String = ""
    var ethnicity: String = ""
    var credits: String = ""
    var employs: String = ""
    var eigenstates: String = ""
    
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
            print("race error")
        }
    }
    
    @IBAction func ethnicity_rbt(_ sender: UIButton) {
        switch sender.tag {
        case 9:
            ethnicity1.isSelected = true
            ethnicity2.isSelected = false
            ethnicity3.isSelected = false
            ethnicity = ethnicity1.currentTitle ?? ""
        case 10:
            ethnicity1.isSelected = false
            ethnicity2.isSelected = true
            ethnicity3.isSelected = false
            ethnicity = ethnicity2.currentTitle ?? ""
        case 11:
            ethnicity1.isSelected = false
            ethnicity2.isSelected = false
            ethnicity3.isSelected = true
            ethnicity = ethnicity3.currentTitle ?? ""
        default:
            print("ethnicity error")
        }
    }

    @IBAction func credits_rbt(_ sender: UIButton) {
        switch sender.tag {
        case 12:
            credits1.isSelected = true
            credits2.isSelected = false
            credits = credits1.currentTitle ?? ""
        case 13:
            credits1.isSelected = false
            credits2.isSelected = true
            credits = credits2.currentTitle ?? ""
        default:
            print("credits error")
        }
    }

    @IBAction func employs_rbt(_ sender: UIButton) {
        switch sender.tag {
        case 14:
            employs1.isSelected = true
            employs2.isSelected = false
            employs3.isSelected = false
            employs = employs1.currentTitle ?? ""
        case 15:
            employs1.isSelected = false
            employs2.isSelected = true
            employs3.isSelected = false
            employs = employs2.currentTitle ?? ""
        case 16:
            employs1.isSelected = false
            employs2.isSelected = false
            employs3.isSelected = true
            employs = employs3.currentTitle ?? ""
        default:
            print("employs error")
        }
    }
    
    @IBAction func eigenstates_rbt(_ sender: UIButton) {
        switch sender.tag {
        case 17:
            eigenstates1.isSelected = true
            eigenstates2.isSelected = false
            eigenstates = eigenstates1.currentTitle ?? ""
        case 18:
            eigenstates1.isSelected = false
            eigenstates2.isSelected = true
            eigenstates = eigenstates2.currentTitle ?? ""
        default:
            print("eigenstates error")
        }
    }
    
    @IBAction func submit(_ sender: Any) {
        JFPopupView.popup.loading()
        if gender.isEmpty && race.isEmpty && ethnicity.isEmpty && credits.isEmpty && employs.isEmpty && eigenstates.isEmpty {
            JFPopupView.popup.alert {[
                       .subTitle("Please complete questions"),
                       .showCancel(false),
                       .confirmAction([
                           .text("Yes"),
                           .tapActionCallback({
//                               JFPopupView.popup.toast(hit: "我知道了")
                           })
                       ])
                   ]}
        } else {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                savePerson(per:
                            Perception(
                                id: Amplify.Auth.getCurrentUser()!.userId,
                                name: Amplify.Auth.getCurrentUser()!.username,
                                gender: self.gender,
                                race: self.race,
                                ethnicity: self.ethnicity,
                                credits: self.credits,
                                employs: self.employs,
                                eigenstates: self.eigenstates,
                                createdAt: Temporal.DateTime.now()
                            ),completion: {
                                (flag) -> Void in
                                
                                if flag {
                                    JFPopupView.popup.hideLoading()
                                    DispatchQueue.main.async {
                                        self.jumpHome()
                                    }
                                } else {
                                    JFPopupView.popup.hideLoading()
                                    JFPopupView.popup.toast(hit: "Please check your network connection and try loading again.")
                                }
                                
                            })
            }
        }
    }
    
    // 跳转至主页
    func jumpHome() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let secondVC = storyboard.instantiateViewController(withIdentifier: "main_view") as? TapBarController else {  return }
        secondVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        self.present(secondVC, animated: true, completion: nil)
    }
   
}
