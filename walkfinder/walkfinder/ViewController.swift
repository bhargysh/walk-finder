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
  
  private var mapView: GMSMapView!
  
  let locationManager: CLLocationManager = CLLocationManager()
  
  override func viewDidLoad() {
    super.viewDidLoad()

    mapView = GMSMapView(frame: view.frame)
    mapView.isMyLocationEnabled = true
    view.addSubview(mapView)
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    
    if !(CLLocationManager.authorizationStatus() == .authorizedWhenInUse) {
      locationManager.requestWhenInUseAuthorization()
    } else {
      setupMapCamera()
    }
  }
  
  func setupMapCamera() {
    
  }
}

extension ViewController: CLLocationManagerDelegate {
  func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
    setupMapCamera()
  }
}

