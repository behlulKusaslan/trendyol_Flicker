//
//  FlickerViewBuilder.swift
//  Trendyol_Behlul
//
//  Created by behlul on 8.01.2019.
//  Copyright © 2019 behlul. All rights reserved.
//

import UIKit
import NetworkAPI

final public class FlickerViewBuilder {
    
    static func make() -> FlickerViewController {
        let storyboard = UIStoryboard(name: "Flicker", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "FlickerViewController") as! FlickerViewController
        viewController.service = Service()
        return viewController
    }
    
}
