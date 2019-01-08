//
//  Photo.swift
//  NetworkAPI
//
//  Created by behlul on 8.01.2019.
//  Copyright © 2019 behlul. All rights reserved.
//

import Foundation

public struct Photo: Decodable {
    public let id: String
    public let owner: String
    public let secret: String
    public let server: String
    public let farm: Int
    public let title: String
    public let ispublic: Int // Bool gives parse error
    public let isfriend: Int
    public let isfamily: Int
}
