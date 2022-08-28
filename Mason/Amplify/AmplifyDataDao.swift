//
//  AmplifyDataDao.swift
//  Mason
//
//  Created by TongWY on 2021/12/4.
//

import Foundation
import Amplify
import UIKit

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

// 根据ID查询用户是否工作
func quaryPersionEmployedbyID(perid :String, completion: @escaping(Bool) -> Void?) {
    Amplify.DataStore.query(Perception.self, byId: perid) {
        switch $0 {
        case .success(let result):
            let post = result?.employs ?? ""
            if (!post.isEmpty)&&(post=="Not currently employed") {
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

// 根据ID查询用户是否参加心理咨询
func quaryPersionEigenstatesbyID(perid :String, completion: @escaping(Bool) -> Void?) {
    Amplify.DataStore.query(Perception.self, byId: perid) {
        switch $0 {
        case .success(let result):
            let post = result?.eigenstates ?? ""
            if (!post.isEmpty) && (post == "Yes") {
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

//根据用户名查询问卷最近的一条信息
func quaryQuestionbyName(userName :String, completion: @escaping(String) -> Void?) {
    let q = Questions.keys
    Amplify.DataStore.query(Questions.self, where: q.name == userName, sort: .descending(q.createdAt), paginate: .page(0, limit: 1)) {
        switch $0 {
        case .success(let result):
            for n in result {
                completion(n.createdAt!.iso8601String)
            }
        case .failure(let error):
            print("Error on query() for type Post - \(error.localizedDescription)")
            completion("")
        }
    }
}
