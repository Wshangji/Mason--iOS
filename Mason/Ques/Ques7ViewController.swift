//
//  Ques7ViewController.swift
//  Mason
//
//  Created by TongWY on 2021/11/15.
//

import UIKit
import DropDown
import JFPopup

class Ques7ViewController: UIViewController {
    @IBOutlet weak var btn: UIButton!
    
    @IBOutlet weak var vcDropDown1:UIView!
    @IBOutlet weak var lblTitle1:UILabel!
    @IBOutlet weak var vcDropDown2:UIView!
    @IBOutlet weak var lblTitle2:UILabel!
    @IBOutlet weak var vcDropDown3:UIView!
    @IBOutlet weak var lblTitle3:UILabel!
    @IBOutlet weak var vcDropDown4:UIView!
    @IBOutlet weak var lblTitle4:UILabel!
    
    let dropDown1 = DropDown()
    let dropDown2 = DropDown()
    let dropDown3 = DropDown()
    let dropDown4 = DropDown()
    let timeValues = ["one time", "two times", "three times", "four times", "five times", "six times", "seven times", "more than seven times"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        btn.setTitleColor(UIColor(red: 7/255, green: 103/255, blue: 53/255, alpha: 1), for: .normal)
        btn.backgroundColor = UIColor(red: 255/255, green: 205/255, blue: 52/255, alpha: 1)
        
        lblTitle1.text = "Select"
        lblTitle2.text = "Select"
        lblTitle3.text = "Select"
        lblTitle4.text = "Select"
        
        dropDown1.anchorView = vcDropDown1
        dropDown1.dataSource = timeValues
        // Top of drop down will be below the anchorView
        dropDown1.bottomOffset = CGPoint(x: 0, y:(dropDown1.anchorView?.plainView.bounds.height)!)
        // When drop down is displayed with `Direction.top`, it will be above the anchorView
        dropDown1.topOffset = CGPoint(x: 0, y:-(dropDown1.anchorView?.plainView.bounds.height)!)
        // Action triggered on selection
        dropDown1.selectionAction = { [unowned self] (index: Int, item: String) in
//            print("Selected item: \(item) at index: \(index)")
            quesList.ques7_1 = item
            self.lblTitle1.text = timeValues[index]
        }
        
        dropDown2.anchorView = vcDropDown2
        dropDown2.dataSource = timeValues
        // Top of drop down will be below the anchorView
        dropDown2.bottomOffset = CGPoint(x: 0, y:(dropDown2.anchorView?.plainView.bounds.height)!)
        // When drop down is displayed with `Direction.top`, it will be above the anchorView
        dropDown2.topOffset = CGPoint(x: 0, y:-(dropDown2.anchorView?.plainView.bounds.height)!)
        // Action triggered on selection
        dropDown2.selectionAction = { [unowned self] (index: Int, item: String) in
//            print("Selected item: \(item) at index: \(index)")
            quesList.ques7_2 = item
            self.lblTitle2.text = timeValues[index]
        }
        
        dropDown3.anchorView = vcDropDown3
        dropDown3.dataSource = timeValues
        // Top of drop down will be below the anchorView
        dropDown3.bottomOffset = CGPoint(x: 0, y:(dropDown3.anchorView?.plainView.bounds.height)!)
        // When drop down is displayed with `Direction.top`, it will be above the anchorView
        dropDown3.topOffset = CGPoint(x: 0, y:-(dropDown3.anchorView?.plainView.bounds.height)!)
        // Action triggered on selection
        dropDown3.selectionAction = { [unowned self] (index: Int, item: String) in
//            print("Selected item: \(item) at index: \(index)")
            quesList.ques7_3 = item
            self.lblTitle3.text = timeValues[index]
        }
        
        dropDown4.anchorView = vcDropDown4
        dropDown4.dataSource = timeValues
        // Top of drop down will be below the anchorView
        dropDown4.bottomOffset = CGPoint(x: 0, y:(dropDown4.anchorView?.plainView.bounds.height)!)
        // When drop down is displayed with `Direction.top`, it will be above the anchorView
        dropDown4.topOffset = CGPoint(x: 0, y:-(dropDown4.anchorView?.plainView.bounds.height)!)
        // Action triggered on selection
        dropDown4.selectionAction = { [unowned self] (index: Int, item: String) in
            quesList.ques7_4 = item
//            print("Selected item: \(item) at index: \(index)")
            self.lblTitle4.text = timeValues[index]
        }


    }
    
    @IBAction func show_options_1(_ sender: Any) {
        dropDown1.show()
    }
    @IBAction func show_options_2(_ sender: Any) {
        dropDown2.show()
    }
    @IBAction func show_options_3(_ sender: Any) {
        dropDown3.show()
    }
    @IBAction func show_options_4(_ sender: Any) {
        dropDown4.show()
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        if quesList.ques7_1.isEmpty || quesList.ques7_2.isEmpty || quesList.ques7_3.isEmpty || quesList.ques7_4.isEmpty {
            JFPopupView.popup.alert {[
                       .subTitle("Please complete questions"),
                       .showCancel(false),
                       .confirmAction([
                           .text("yes"),
                           .tapActionCallback({
//                               JFPopupView.popup.toast(hit: "我知道了")
                           })
                       ])
                   ]}
        } else {
            return true
        }
        return false
    }

}
