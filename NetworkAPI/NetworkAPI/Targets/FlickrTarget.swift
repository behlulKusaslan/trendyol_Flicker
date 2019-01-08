//
//  FlickrTarget.swift
//  NetworkAPI
//
//  Created by behlul on 8.01.2019.
//  Copyright © 2019 behlul. All rights reserved.
//

import Foundation
import Moya

public enum FlickrTarget {
    case getRecentPhotos
    case getUser(userId: String)
}

extension FlickrTarget: TargetType {
    public var baseURL: URL {
        return BASE_URL
    }
    
    public var path: String {
        return ""
    }
    
    public var method: Moya.Method {
        switch self {
        case .getRecentPhotos,
             .getUser:
            return .get
        }
    }
    
    public var sampleData: Data {
        return Data()
    }
    
    public var task: Task {
        switch self {
        case .getRecentPhotos:
            // TODO: Remove params in request object
            let params: [String : Any] = [
                "method" : "flickr.photos.getRecent",
                "api_key" : "b067d3d3ad3df443b1ae64fa27794d8f",
                "per_page" : 20,
                "page" : 1,
                "format" : "json",
                "nojsoncallback" : 1
            ]
            return .requestParameters(parameters: params, encoding: URLEncoding(destination: .queryString))
        case .getUser(let userId):
            let params: [String : Any] = [
                "method" : "flickr.people.getInfo",
                "api_key" : "b067d3d3ad3df443b1ae64fa27794d8f",
                "user_id" : userId,
                "format" : "json",
                "nojsoncallback" : 1
            ]
            return .requestParameters(parameters: params, encoding: URLEncoding(destination: .queryString))
        }
    }
    
    public var headers: [String : String]? {
        return [
            "Content-Type" : "application/json"
        ]
    }
}
