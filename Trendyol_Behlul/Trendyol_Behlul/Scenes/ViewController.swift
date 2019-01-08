//
//  ViewController.swift
//  Trendyol_Behlul
//
//  Created by behlul on 8.01.2019.
//  Copyright © 2019 behlul. All rights reserved.
//

import UIKit
import NetworkAPI

class ViewController: UIViewController {
    
    var service: ServiceProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        service = Service()
        service.testService()
    }


}

