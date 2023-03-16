//
//  LocationTableViewCell.swift
//  Photo Scavenger Hunt
//
//  Created by Kobe Petrus on 3/15/23.
//

import UIKit

class LocationTableViewCell: UITableViewCell {

    @IBOutlet weak var checkDotImageView: UIImageView!
    @IBOutlet weak var locationLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configure(with imageItem: ImageItems) {
        locationLabel.text = imageItem.title
        locationLabel.textColor = imageItem.isComplete ? .secondaryLabel : .label
        checkDotImageView.image = UIImage(systemName: imageItem.isComplete ? "checkmark.circle.fill" : "circle")?.withRenderingMode(.alwaysTemplate)
        checkDotImageView.tintColor = imageItem.isComplete ? .systemBlue : .tertiaryLabel
    }

}
