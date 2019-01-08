//
//  FlickerFeedCollectionViewCellBuilder.swift
//  Trendyol_Behlul
//
//  Created by behlul on 8.01.2019.
//  Copyright © 2019 behlul. All rights reserved.
//

import UIKit

final public class FlickerFeedCollectionViewCellBuilder {
    
    static func make(with flickerViewPresentation: [FlickerViewPresentation], for collectionView: UICollectionView, at indexPath: IndexPath) -> FlickerFeedCollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FlickerFeedCollectionViewCell", for: indexPath) as? FlickerFeedCollectionViewCell ?? FlickerFeedCollectionViewCell()
        let feedObject = flickerViewPresentation[indexPath.row]
        cell.configureCell(with: feedObject)
        return cell
    }
    
}
