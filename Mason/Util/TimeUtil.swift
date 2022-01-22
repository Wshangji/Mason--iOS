//
//  TimeUtil.swift
//  Mason
//
//  Created by TongWY on 2022/1/22.
//

import Foundation

//iso8601String 转换为 Date类型
extension Formatter {
    static let iso8601: ISO8601DateFormatter = {
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
        return formatter
    }()
}


//判断上次提交问卷经过多少天
func dateInterval(userName: String) -> Int{
    var flag = -1
    
    quaryQuestionbyName(userName: userName, completion: {
        (str) -> Void in
        if !str.isEmpty {
            let date1 = Formatter.iso8601.date(from: str)
            let date2 = Date()
            let components = NSCalendar.current.dateComponents([.day], from: date1!, to: date2)
            flag = components.day!
        }
    })
    return flag
}
