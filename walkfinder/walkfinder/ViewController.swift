//
//  ViewController.swift
//  walkfinder
//
//  Created by Bharg Sharma on 20/6/18.
//  Copyright © 2018 Bharg Sharma. All rights reserved.
//

import UIKit
import GoogleMaps
import CoreLocation

class ViewController: UIViewController {
    let authoriseCurrentLocation: CLLocationManager = CLLocationManager()
    //class intance declaration because instantiating it inside the viewDidLoad method meant instance was released by ARC after method was had been executed

    override func viewDidLoad() {
        super.viewDidLoad()
        authoriseCurrentLocation.requestAlwaysAuthorization()
        //authoriseCurrentLocation.requestWhenInUseAuthorization()
        
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
//
//        // Creates a marker in the center of the map.
//        let marker = GMSMarker()
//        marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
//        marker.title = "Sydney"
//        marker.snippet = "Australia"
//        marker.map = mapView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

