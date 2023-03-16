//
//  Location.swift
//  Photo Scavenger Hunt
//
//  Created by Kobe Petrus on 3/15/23.
//

import UIKit
import CoreLocation

class ImageItems{
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension ImageItems {
    static var mockedItems: [ImageItems] {
        return [
            ImageItems(title: "Your House",
                 description: "What does your house look like?"),
            ImageItems(title: "Your Favorite Mall",
                 description: "What is your favorite mall?"),
            ImageItems(title: "Your School",
                 description: "Where do you go to school?")
        ]
    }
}
