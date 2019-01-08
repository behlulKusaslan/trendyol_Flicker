//
//  Person.swift
//  NetworkAPI
//
//  Created by behlul on 8.01.2019.
//  Copyright © 2019 behlul. All rights reserved.
//

import Foundation

public struct Person: Decodable {
    public let id: String
    public let nsid: String
    public let iconserver: String
    public let iconfarm: Int
    public let username: UserName
}

public struct UserName: Decodable {
    public let content: String
    
    public enum CodingKeys: String, CodingKey {
        case content = "_content"
    }
}
