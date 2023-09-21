//
//  ErrorView.swift
//  EssentialFeediOS
//
//  Created by Macbook Pro on 21/9/23.
//

import Foundation
import UIKit

public final class ErrorView: UIView {
    @IBOutlet private var label: UILabel!
    
    public var message: String? {
        get { return label.text }
        set { label.text = newValue }
    }
    
    public override func awakeFromNib() {
        super.awakeFromNib()
        
        label.text = nil
    }
}
