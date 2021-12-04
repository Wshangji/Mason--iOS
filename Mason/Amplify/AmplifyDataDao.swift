//
//  AmplifyDataDao.swift
//  Mason
//
//  Created by TongWY on 2021/12/4.
//

import Foundation
import Amplify

// 创建用户
func saveUser(user :User, completion: @escaping(Bool) -> Void?) {
    Amplify.DataStore.save(user) {
        switch $0 {
        case .success:
            print("Created a new user successfully")
            completion(true)
        case .failure(let error):
            print("Error creating user - \(error.localizedDescription)")
            completion(false)
        }
    }
}

// 创建用户信息
func savePerson(per :Perception, completion: @escaping(Bool) -> Void?) {
    Amplify.DataStore.save(per) {
        switch $0 {
        case .success:
            print("Created a new persion message successfully")
            completion(true)
        case .failure(let error):
            print("Error creating persion message - \(error.localizedDescription)")
            completion(false)
        }
    }
}

// 创建问卷
func saveQues(questions :Questions, completion: @escaping(Bool) -> Void?) {
    Amplify.DataStore.save(questions) {
        switch $0 {
        case .success:
            print("Created a new questions successfully")
            completion(true)
        case .failure(let error):
            print("Error creating questions - \(error.localizedDescription)")
            completion(false)
        }
    }
}

// 清除数据
func dataClear() {
    Amplify.DataStore.clear { result in
        switch result {
        case .success:
            print("DataStore cleared")
        case .failure(let error):
            print("Error clearing DataStore: \(error)")
        }
    }
}


// 根据ID查询用户
func quaryUserbyID(userid :String, completion: @escaping(Bool) -> Void?) {
    Amplify.DataStore.query(User.self, byId: userid) {
        switch $0 {
        case .success(let result):
            let flag = result?.isAgree ?? false
            completion(flag)
        case .failure(let error):
            print("Error on query() for type Post - \(error.localizedDescription)")
            completion(false)
        }
    }
}

// 根据ID查询用户信息
func quaryPersionbyID(perid :String, completion: @escaping(Bool) -> Void?) {
    Amplify.DataStore.query(Perception.self, byId: perid) {
        switch $0 {
        case .success(let result):
            let post = result?.ethnicity ?? ""
            if (!post.isEmpty) && (post != "Not currently employed") {
                completion(true)
            } else {
                completion(false)
            }
        case .failure(let error):
            completion(false)
            print("Error on query() for type Post - \(error.localizedDescription)")
        }
    }
}
