//
//  TopPhotosResponse.swift
//  NetworkAPI
//
//  Created by behlul on 8.01.2019.
//  Copyright © 2019 behlul. All rights reserved.
//

import Foundation

public struct TopPhotosResponse: Decodable {
    public let photos: Photos
    public let stat: String
}
