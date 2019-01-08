//
//  FlickerFeedCollectionViewCell.swift
//  Trendyol_Behlul
//
//  Created by behlul on 8.01.2019.
//  Copyright © 2019 behlul. All rights reserved.
//

import UIKit
import Kingfisher

class FlickerFeedCollectionViewCell: UICollectionViewCell {
    
    // Outlets
    @IBOutlet weak var profileImageView: CircleImageView!
    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var profilNameLabel: UILabel!
    @IBOutlet weak var postDescriptionLabel: UILabel!
    

    // Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        profileImageView.image = nil
        postImageView.image = nil
        profilNameLabel.text = nil
        postDescriptionLabel.text = nil
    }
    
    // Functions
    func configureCell(with flickerViewPresentation: FlickerViewPresentation) {
        profileImageView.kf.setImage(with: flickerViewPresentation.profileImagePath)
        postImageView.kf.setImage(with: flickerViewPresentation.postImagePath)
        profilNameLabel.text = flickerViewPresentation.profileName
        postDescriptionLabel.text = flickerViewPresentation.postDescription
    }

}
