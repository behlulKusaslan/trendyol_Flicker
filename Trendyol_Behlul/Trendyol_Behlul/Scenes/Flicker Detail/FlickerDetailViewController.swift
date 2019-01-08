//
//  FlickerDetailViewController.swift
//  Trendyol_Behlul
//
//  Created by behlul on 8.01.2019.
//  Copyright © 2019 behlul. All rights reserved.
//

import UIKit

final class FlickerDetailViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var flickerDetailView: FlickerDetailView!
    var flickerViewPresentation: FlickerViewPresentation!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        debugPrint(flickerViewPresentation.postImagePath)
        flickerDetailView.updateView(with: flickerViewPresentation)
    }
    
}
