//
//  ViewModel.swift
//  Stacktrait
//
//  Created by John Walker on 27/07/2016.
//  Copyright © 2016 John Walker. All rights reserved.
//

import UIKit

class ViewModel: NSObject {

    @IBOutlet weak var label: UILabel?
    
    func didUpdateTraitCollection(collection: UITraitCollection) {
        if collection.containsTraitsInCollection(Design.wChR) {
            label?.text = "Top"
        } else {
            label?.text = "Right"
        }
    }
    
    
}
