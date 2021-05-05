//
//  ViewController.swift
//  projectThree
//
//  Created by User on 4/15/21.
//  Copyright © 2021 Kalahiki Reid. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var projMap: MKMapView!
    
//Chef's Lau 21.335039 , -158.088287
//Aloha Salads 21.331251 , -158.091599
//Brick Oven Pizza 21.332531 , -158.082153
//My Cafe 21.337778 , -158.079742
//Koa Pancake House 21.338045 , -158.080673

    //the inital locaiton of the map
    let initialLocation = CLLocation(latitude: 21.332323, longitude: -158.082962)
    
    //let initialLocation = CLLocation(latitude: 21.356522325850733, longitude: -158.05621900337144)
    
    let regionRadius: CLLocationDistance = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        centerMapOnLocation(location: initialLocation)
        
        let restaurantOne = restaurantAnnotation (title: "Chef's Lau", type: "Hawaiian", coordinate: CLLocationCoordinate2D (latitude: 21.335039, longitude: -158.088287))
        
        projMap.addAnnotation(restaurantOne)

    }
    //centers the map on something specific
    func centerMapOnLocation (location: CLLocation)
    {
        
       let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        
        projMap.setRegion(coordinateRegion, animated: true)
        
    }


}

