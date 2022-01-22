//
//  MasonTests.swift
//  MasonTests
//
//  Created by TongWY on 2021/11/2.
//

import XCTest
@testable import Mason

class MasonTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
//        guard let date1 = dateFormatter.date(from: "2021-11-3"),
//                  let date2 = dateFormatter.date(from: "2021-12-8") else {
//                print("error")
//            }
//        let components = NSCalendar.current.dateComponents([.day], from: "2021-11-3", to: "2021-12-8")
            //如果需要返回月份间隔，分钟间隔等等，只需要在dateComponents第一个参数后面加上相应的参数即可，示例如下：
        //    let components = NSCalendar.current.dateComponents([.month,.day,.hour,.minute], from: date1, to: date2)
//        print(components.day)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
