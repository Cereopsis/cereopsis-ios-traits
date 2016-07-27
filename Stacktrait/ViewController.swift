//
//  ViewController.swift
//  Stacktrait
//
//  Created by John Walker on 27/07/2016.
//  Copyright © 2016 John Walker. All rights reserved.
//

import UIKit

extension CGSize {
    var isNarrowWidth: Bool {
        return width < height
    }
}

struct Design {
    
    static let wChR = UITraitCollection(traitsFromCollections: [UITraitCollection(horizontalSizeClass: .Compact), UITraitCollection(verticalSizeClass: .Regular)])
    static let wRhC = UITraitCollection(traitsFromCollections: [UITraitCollection(horizontalSizeClass: .Regular), UITraitCollection(verticalSizeClass: .Compact)])
    
    let traitCollection: UITraitCollection
    
    init(compactWidth: Bool) {
        traitCollection = compactWidth ? Design.wChR : Design.wRhC
    }
    
}


class ViewController: UIViewController {

    var design: Design?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransitionToSize(size, withTransitionCoordinator: coordinator)
        design = Design(compactWidth: size.isNarrowWidth)
        setOverrideTraitCollection(design?.traitCollection, forChildViewController: childViewControllers[0])
    }
    
    override func overrideTraitCollectionForChildViewController(childViewController: UIViewController) -> UITraitCollection? {
        return design?.traitCollection
    }
    
    
    override func traitCollectionDidChange(previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        design = Design(compactWidth: view.bounds.size.isNarrowWidth)
    }



}

