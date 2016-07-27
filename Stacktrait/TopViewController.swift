//
//  TopViewController.swift
//  Stacktrait
//
//  Created by John Walker on 27/07/2016.
//  Copyright © 2016 John Walker. All rights reserved.
//

import UIKit

class TopViewController: UIViewController {
    
    @IBOutlet var viewModel: ViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    override func traitCollectionDidChange(previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        viewModel.didUpdateTraitCollection(traitCollection)
    }

}
