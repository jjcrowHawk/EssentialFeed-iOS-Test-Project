//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by Macbook Pro on 22/9/23.
//

import Foundation
import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
