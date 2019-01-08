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
    func getRecentPosts(completion: @escaping (Result<TopPhotosResponse>) -> Void)
}

public final class Service: ServiceProtocol {
    
    private let flickrProvider = MoyaProvider<FlickrTarget>()
    
    public init() {
        //flickrProvider = MoyaProvider<FlickrTarget>()
    }
    
    public func testService() {
        print("/--- test service Success ---/")
    }
    
    public func getRecentPosts(completion: @escaping (Result<TopPhotosResponse>) -> Void) {
        flickrProvider.request(.getRecentPhotos) { (result) in
            
            switch result {
            case .success(let value):
                do {
                    debugPrint(try value.mapJSON())
                    let decoder = JSONDecoder()
                    let response = try decoder.decode(TopPhotosResponse.self, from: value.data)
                    completion(Result.success(response))
                } catch {
                    completion(Result.failure(Error.serilizationError(internal: error)))
                }
            case .failure(let error):
                completion(Result.failure(Error.networkError(internal: error)))
            }
        }
    }
    
}
