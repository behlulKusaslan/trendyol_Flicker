//
//  FlickerDetailViewBuilder.swift
//  Trendyol_Behlul
//
//  Created by behlul on 8.01.2019.
//  Copyright © 2019 behlul. All rights reserved.
//

import UIKit

final public class FlickerDetailViewBuilder {
    
    static func make(with flickerViewPresentation: FlickerViewPresentation) -> FlickerDetailViewController {
        let storyboard = UIStoryboard(name: "Flicker", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "FlickerDetailViewController") as! FlickerDetailViewController
        viewController.flickerViewPresentation = flickerViewPresentation
        viewController.service = app.service
        return viewController
    }
    
}
