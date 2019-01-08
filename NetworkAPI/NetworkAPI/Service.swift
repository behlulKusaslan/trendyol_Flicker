//
//  Service.swift
//  NetworkAPI
//
//  Created by behlul on 8.01.2019.
//  Copyright © 2019 behlul. All rights reserved.
//

import Foundation
import Moya

public protocol ServiceProtocol {
    func testService()
}

public final class Service: ServiceProtocol {
    
    public init() { }
    
    public func testService() {
        print("/--- test service Success ---/")
    }
    
}
