//
//  AppContainer.swift
//  Trendyol_Behlul
//
//  Created by behlul on 8.01.2019.
//  Copyright © 2019 behlul. All rights reserved.
//

import Foundation
import NetworkAPI

let app = AppContainer()

final class AppContainer {
    
    let router = AppRouter()
    let service = Service()
}
