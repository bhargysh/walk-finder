//
//  AppDelegate.swift
//  walkfinder
//
//  Created by Bharg Sharma on 20/6/18.
//  Copyright © 2018 Bharg Sharma. All rights reserved.
//

import UIKit
import GoogleMaps
import GooglePlaces

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  let googleMapsAPIKey = "AIzaSyBzwO0thQfrDyoUZbDY1OwVvrhBBjdnZ6M"
  let googlePlacesAPIKey = "AIzaSyCzi1asmXnEs9pk6wfAVEI2rzm9CJxVaGE"
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    GMSServices.provideAPIKey(googleMapsAPIKey)
    GMSPlacesClient.provideAPIKey(googlePlacesAPIKey)
    return true
  }
}

