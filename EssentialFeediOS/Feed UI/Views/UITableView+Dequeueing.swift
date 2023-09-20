//
//  UITableView+Dequeueing.swift
//  EssentialFeediOS
//
//  Created by Macbook Pro on 20/9/23.
//

import UIKit

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>() -> T {
        let identifier = String(describing: T.self)
        return dequeueReusableCell(withIdentifier: identifier) as! T
    }
}
