//
//  FlickerViewController.swift
//  Trendyol_Behlul
//
//  Created by behlul on 8.01.2019.
//  Copyright © 2019 behlul. All rights reserved.
//

import UIKit

final class FlickerViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var flickerView: FlickerView!
    
    // Variables
    var service: ServiceProtocol!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}
