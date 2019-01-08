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
    var loopCount = -1
    var photos: [Photo] = []
    var persons: [Person] = [] {
        didSet {
            var presentations: [FlickerViewPresentation] = []
            for (index, person) in persons.enumerated() {
                presentations.append(FlickerViewPresentation(photo: photos[index], person: person))
            }
            state = .ready(presentations)
        }
    }
    var service: ServiceProtocol!
    var state = State.loading {
        didSet {
            switch state {
            case .loading:
                flickerView.setLoading(true)
            case .ready(let feedObjects):
                flickerView.setLoading(false)
                flickerView.updateCollectionView(feedObjects)
            case .error:
                flickerView.setLoading(false)
            }
        }
    }
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        

        flickerView.delegate = self
        // TODO: fetch data from service and pass into view
        fetcFeed()
        
    }
    
    // Functions
    private func fetcFeed() {
        service.getRecentPosts { [weak self] (result) in
            guard let strongSelf = self else { return }
            switch result {
            case .success(let value):
                debugPrint(value)
                strongSelf.photos = value.photos.photo
                strongSelf.persons = []
                for photo in value.photos.photo {
                    strongSelf.getUser(with: photo.owner)
                }
            case .failure(let error):
                debugPrint(error.localizedDescription)
            }
        }
    }
    
    private func getUser(with userId: String) {
        service.getUserInfo(userId: userId) { [weak self] (result) in
            guard let strongSelf = self else { return }
            switch result {
            case .success(let value):
                debugPrint(value)
                strongSelf.persons.append(value.person)
            case .failure(let error):
                debugPrint(error.localizedDescription)
            }
        }
    }
    
}

// MARK: - FlickerViewDelegate
extension FlickerViewController: FlickerViewDelegate {
    func didCellSelected(at: Int) {
        print(at)
        // TODO: Go to detail view with object
    }
}

// MARK: - State
extension FlickerViewController {
    enum State {
        case loading
        case ready([FlickerViewPresentation])
        case error
    }
}
