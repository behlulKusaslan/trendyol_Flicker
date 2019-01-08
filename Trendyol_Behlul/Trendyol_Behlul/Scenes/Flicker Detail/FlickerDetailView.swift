//
//  FlickerDetailView.swift
//  Trendyol_Behlul
//
//  Created by behlul on 8.01.2019.
//  Copyright © 2019 behlul. All rights reserved.
//

import UIKit
import Kingfisher

final class FlickerDetailView: UIView {
    
    // Outlets
    @IBOutlet weak var postImageView: UIImageView!
    
    // Variables
    var flickerViewPresentation: FlickerViewPresentation?
    
    // Functions
    private func setViewComponents() {
        postImageView.kf.setImage(with: flickerViewPresentation?.postImagePath)
    }
}

// MARK: - FlickerDetailViewProtocol
extension FlickerDetailView: FlickerDetailViewProtocol {
    func updateView(with flickerViewPresentation: FlickerViewPresentation) {
        self.flickerViewPresentation = flickerViewPresentation
        setViewComponents()
    }
}
