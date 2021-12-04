//
//  NotifitionUtil.swift
//  Mason
//
//  Created by TongWY on 2021/12/4.
//

import Foundation
import UserNotifications
import Amplify


func remendMe() {
    let center = UNUserNotificationCenter.current()
    center.requestAuthorization(options: [.alert, .sound]) {
        (granted,error) in
    }
    // 代理 UNUserNotificationCenterDelegate，這麼做可讓 App 在前景狀態下收到通知
    
    let content = UNMutableNotificationContent()
    content.title = "Hi,"+Amplify.Auth.getCurrentUser()!.username
    content.body = "Don’t forget to check in on Gradwyn for your weekly survey. You increase your earnings with each survey you complete."
    content.sound = UNNotificationSound.default
    
    let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
            
    let request = UNNotificationRequest(identifier: "notification", content: content, trigger: trigger)
            
    UNUserNotificationCenter.current().add(request, withCompletionHandler: {error in
        print("成功建立通知...")
    })
    
}
