//
//  Restaurants.swift
//  projectThree
//
//  Created by User on 5/5/21.
//  Copyright © 2021 Kalahiki Reid. All rights reserved.
//

import UIKit

import MapKit

class restaurantAnnotation: NSObject, MKAnnotation {
    
    let restaurantTitle: String?
    let restaurantType: String
    var coordinate: CLLocationCoordinate2D
    
    init(title: String, type: String, coordinate: CLLocationCoordinate2D) {
        self.restaurantTitle = title
        self.restaurantType = type
        self.coordinate = coordinate
        
        super.init()
    }
    
    var subtitle: String? {
        return restaurantTitle
    }

}
