//
//  VerifyUtil.swift
//  Mason
//
//  Created by TongWY on 2021/12/1.
//

import Foundation

// 实现邮箱验证
extension String{
    func isValidateEmail() -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailTest.evaluate(with:self)
    }
 }
