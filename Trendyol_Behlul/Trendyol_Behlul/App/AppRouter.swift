//
//  AppRouter.swift
//  Trendyol_Behlul
//
//  Created by behlul on 8.01.2019.
//  Copyright © 2019 behlul. All rights reserved.
//

import UIKit

final class AppRouter {
    
    let window: UIWindow
    
    init() {
        window = UIWindow(frame: UIScreen.main.bounds)
    }
    
    func start() {
        let viewController = FlickerViewBuilder.make()
        var navigationController = UINavigationController(rootViewController: viewController)
        navigationController = setUpNavigationBarStyle(for: navigationController)
        
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
    
    private func setUpNavigationBarStyle(for navigationController: UINavigationController) -> UINavigationController {
        navigationController.navigationBar.barStyle = .black
        navigationController.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        return navigationController
    }
    
}

