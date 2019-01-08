//
//  Photos.swift
//  NetworkAPI
//
//  Created by behlul on 8.01.2019.
//  Copyright © 2019 behlul. All rights reserved.
//

import Foundation

public struct Photos: Decodable {
    public let page: Int
    public let pages: Int
    public let perpage: Int
    public let total: Int
    public let photo: [Photo]
}
