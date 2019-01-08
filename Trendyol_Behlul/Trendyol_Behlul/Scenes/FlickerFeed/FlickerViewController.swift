//
//  FlickerViewController.swift
//  Trendyol_Behlul
//
//  Created by behlul on 8.01.2019.
//  Copyright © 2019 behlul. All rights reserved.
//

import UIKit
import NetworkAPI

final class FlickerViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var flickerView: FlickerView!
    
    // Variables
    var service: ServiceProtocol!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        service.getRecentPosts { (result) in
            switch result {
            case .success(let value):
                debugPrint(value)
            case .failure(let error):
                debugPrint(error.localizedDescription)
            }
        }
        
        service.getUserInfo(userId: "161523614@N06") { (result) in
            switch result {
            case .success(let value):
                debugPrint(value)
            case .failure(let error):
                debugPrint(error.localizedDescription)
            }
        }
        
    }
    
}
