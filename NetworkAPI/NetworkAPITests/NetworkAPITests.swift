//
//  NetworkAPITests.swift
//  NetworkAPITests
//
//  Created by behlul on 8.01.2019.
//  Copyright © 2019 behlul. All rights reserved.
//

import XCTest
@testable import NetworkAPI

class NetworkAPITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        let service = Service()
        service.testService()
    }

}
