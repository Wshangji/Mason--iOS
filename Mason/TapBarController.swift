//
//  TapBarController.swift
//  Mason
//
//  Created by TongWY on 2021/11/12.
//

import UIKit

class TapBarController: UITabBarController {
    @IBOutlet weak var tapBar: UITabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillLayoutSubviews() {
        var tabFrame: CGRect = self.tabBar.frame
        tabFrame.size.height = 50
        tabFrame.origin.y = self.view.frame.size.height - 50
        self.tapBar.frame = tabFrame
    }

}
