//
//  FlickerView.swift
//  Trendyol_Behlul
//
//  Created by behlul on 8.01.2019.
//  Copyright © 2019 behlul. All rights reserved.
//

import UIKit

final class FlickerView: UIView {
    
    // Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var loadingActivityIndicator: UIActivityIndicatorView!
    
    // Variables
    weak var delegate: FlickerViewDelegate?
    private var flickerFeeds: [FlickerViewPresentation] = []
    
    // Functions
    private func connectCollectionViewCellNib() {
        let nib = UINib(nibName: "FlickerFeedCollectionViewCell", bundle: nil)
        collectionView?.register(nib, forCellWithReuseIdentifier: "FlickerFeedCollectionViewCell")
    }
    
}

// MARK: - FlickerViewProtocol
extension FlickerView: FlickerViewProtocol {
    func showError() {
        // TODO: implement
    }
    
    func updateCollectionView(_ flickerPresentation: [FlickerViewPresentation]) {
        connectCollectionViewCellNib()
        self.flickerFeeds = flickerPresentation
        collectionView.reloadData()
    }
    
    func setLoading(_ isLoading: Bool) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = isLoading
        loadingActivityIndicator.isHidden = !isLoading
        collectionView.isHidden = isLoading
        isLoading ? loadingActivityIndicator.startAnimating() : loadingActivityIndicator.stopAnimating()
    }
}

// MARK: - UICollectionViewDelegate
extension FlickerView: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        delegate?.didCellSelected(at: indexPath.row)
    }
}

// MARK: - UICollectionViewDataSource
extension FlickerView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return flickerFeeds.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return FlickerFeedCollectionViewCellBuilder.make(with: flickerFeeds, for: collectionView, at: indexPath)
    }
}

// MARK: - UICollectionViewDelegateFlowLayout
extension FlickerView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let numberOfColumns: CGFloat = 2
        
        let cellWidth = ((self.frame.width) - (numberOfColumns - 1)) / numberOfColumns
        return CGSize(width: cellWidth, height: cellWidth)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1.0
    }
}
