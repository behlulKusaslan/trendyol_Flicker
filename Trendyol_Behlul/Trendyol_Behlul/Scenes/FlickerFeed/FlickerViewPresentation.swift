//
//  FlickerViewPresentation.swift
//  Trendyol_Behlul
//
//  Created by behlul on 8.01.2019.
//  Copyright © 2019 behlul. All rights reserved.
//

import Foundation
import struct NetworkAPI.Photo
import struct NetworkAPI.Person

struct FlickerViewPresentation {
    let profileImagePath: String
    let postImagePath: String
    let profileName: String
    let postDescription: String
}

extension FlickerViewPresentation {
    init(photo: Photo, person: Person) {
        let profileImagePath = "http://farm\(photo.farm).staticflickr.com/\(photo.server)/\(photo.id)_\(photo.secret).jpg"
        let postImagePath = "http://farm\(person.iconfarm).staticflickr.com/\(person.iconserver)/buddyicons/\(person.nsid).jpg"
        
        self.init(profileImagePath: profileImagePath, postImagePath: postImagePath, profileName: person.username.content, postDescription: photo.title)
    }
}
