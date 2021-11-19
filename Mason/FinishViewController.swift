//
//  FinishViewController.swift
//  Mason
//
//  Created by TongWY on 2021/11/18.
//

import UIKit
import Amplify

class FinishViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {

        Amplify.DataStore.save(
            Questions(
                name: Amplify.Auth.getCurrentUser()?.username ?? "",
                pro1: quesList.ques1,
                pro2: quesList.ques2,
                pro3: quesList.ques3,
                pro4: quesList.ques4,
                pro5: quesList.ques5,
                pro6_1: quesList.ques6_1,
                pro6_2: quesList.ques6_2,
                pro7_1: quesList.ques7_1,
                pro7_2: quesList.ques7_2,
                pro7_3: quesList.ques7_3,
                pro7_4: quesList.ques7_4,
                pro8_1: quesList.ques8_1,
                pro8_2: quesList.ques8_2,
                pro8_3: quesList.ques8_3,
                pro8_4: quesList.ques8_4,
                pro8_5: quesList.ques8_5,
                pro9_1: quesList.ques9_1,
                pro9_2: quesList.ques9_2,
                pro9_3: quesList.ques9_3,
                pro9_4: quesList.ques9_4,
                pro9_5: quesList.ques9_5
            )
        ) {
            switch $0 {
            case .success:
                print("Created a new post successfully")
            case .failure(let error):
                print("Error creating post - \(error.localizedDescription)")
            }
        }
        return true
    }

}
