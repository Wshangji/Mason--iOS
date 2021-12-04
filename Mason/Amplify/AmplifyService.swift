//
//  AmplifyService.swift
//  Mason
//
//  Created by TongWY on 2021/12/4.
//

import Foundation
import Amplify

// AWS登录
func signIn(username: String, password: String, completion: ((Bool) -> Void)!) {
    Amplify.Auth.signIn(username: username, password: password) { result in
        switch result {
        case .success:
            print("Login Success")
            completion(true)
        case .failure(let error):
            print("Sign in failed \(error)")
            completion(false)
        }
    }
}

//注册用户
func signUp(username: String, password: String, email: String, completion: @escaping(Bool) -> Void?) {
    let userAttributes = [AuthUserAttribute(.email, value: email)]
    let options = AuthSignUpRequest.Options(userAttributes: userAttributes)
    Amplify.Auth.signUp(username: username, password: password, options: options) { result in
        switch result {
        case .success(let signUpResult):
            if case let .confirmUser(deliveryDetails, _) = signUpResult.nextStep {
                print("Delivery details \(String(describing: deliveryDetails))")
                completion(false)
            } else {
                print("SignUp Complete")
                completion(true)
            }
        case .failure(let error):
            print("An error occurred while registering a user \(error)")
            completion(false)
        }
    }
}

//验证用户
func confirmSignUp(for username: String, with confirmationCode: String, completion: @escaping(Bool) -> Void?) {
    Amplify.Auth.confirmSignUp(for: username, confirmationCode: confirmationCode) { result in
        switch result {
        case .success:
            print("Confirm signUp succeeded")
            completion(true)
        case .failure(let error):
            print("An error occurred while confirming sign up \(error)")
            completion(false)
        }
    }
}

//退出登陆
func signOutLocally(completion:@escaping(Bool) -> Void?) {
    Amplify.Auth.signOut() { result in
        switch result {
        case .success:
            print("Successfully signed out")
            completion(true)
        case .failure(let error):
            print("Sign out failed with error \(error)")
            completion(false)
        }
    }
}
