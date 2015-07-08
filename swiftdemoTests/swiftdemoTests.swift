//
//  swiftdemoTests.swift
//  swiftdemoTests
//
//  Created by vigoss on 15/7/7.
//  Copyright © 2015年 jiang. All rights reserved.
//

import XCTest
import UIKit

@testable import swiftdemo


class swiftdemoTests: XCTestCase {
    
    var viewController: ViewController!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        viewController = ViewController()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testViewControllerLoaded() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertNotNil(viewController.view, "View not loaded")
        
    }
    
    func testViewControllerSum() {
        let res:Int! = viewController.sum(2, value2: 3)
        XCTAssertEqual(res, 5, "2+3 计算错误")
    }
    
    func testViewControllerDidReceiveMemoryWarning() {
        viewController.didReceiveMemoryWarning()
        XCTAssertTrue(viewController.memoryWaring!)
    }
    
//    func testViewControllerCalculate() {
//        viewController.viewDidLoad()
//        print(viewController.result.text)
//        viewController.value1.text = "2"
//        viewController.value2.text = "3"
//        viewController.loadView()
//        viewController.calculate()
//        XCTAssertEqual(viewController.result.text, "no value input!")
//    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            viewController.sum(2, value2: 3)
            // Put the code you want to measure the time of here.
        }
    }
    
}
