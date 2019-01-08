//
//  Error.swift
//  NetworkAPI
//
//  Created by behlul on 8.01.2019.
//  Copyright © 2019 behlul. All rights reserved.
//

import Foundation

public enum Error: Swift.Error {
    case serilizationError(internal: Swift.Error)
    case networkError(internal: Swift.Error)
}
