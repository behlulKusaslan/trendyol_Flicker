//
//  TopUserResponse.swift
//  NetworkAPI
//
//  Created by behlul on 8.01.2019.
//  Copyright © 2019 behlul. All rights reserved.
//

import Foundation

public struct TopUserResponse: Decodable {
    public let person: Person
    public let stat: String
}
