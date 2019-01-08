//
//  FlickerViewContracts.swift
//  Trendyol_Behlul
//
//  Created by behlul on 8.01.2019.
//  Copyright © 2019 behlul. All rights reserved.
//

import Foundation

protocol FlickerViewProtocol {
    var delegate: FlickerViewDelegate? { get set }
    func updateCollectionView(_ flickerPresentation: [FlickerViewPresentation])
    func setLoading(_ isLoading: Bool)
    func showError()
}

protocol FlickerViewDelegate: class {
    func didCellSelected(at index: Int)
}
