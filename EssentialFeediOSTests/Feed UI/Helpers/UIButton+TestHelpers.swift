//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Macbook Pro on 20/9/23.
//

import Foundation
import UIKit

extension UIButton {
    func simulateTap() {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: .touchUpInside)?.forEach({ selector in
                (target as NSObject).perform(Selector(selector))
            })
        }
    }
}
