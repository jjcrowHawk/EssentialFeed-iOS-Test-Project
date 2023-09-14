//
//  FeedImageCell.swift
//  Prototype
//
//  Created by Macbook Pro on 13/9/23.
//

import UIKit

class FeedImageCell: UITableViewCell {
    
    @IBOutlet private(set) var locationContainer: UIStackView!
    @IBOutlet private(set) var locationLabel: UILabel!
    @IBOutlet private(set) var feedImageView: UIImageView!
    @IBOutlet private(set) var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        feedImageView.alpha = 0
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        feedImageView.alpha = 0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func fadeIn(_ image: UIImage?) {
        feedImageView.image = image
        
        UIView.animate(withDuration: 0.3, delay: 0.3, options: [], animations: { self.feedImageView.alpha = 1})
    }

}
