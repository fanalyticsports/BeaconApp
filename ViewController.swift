//
//  ViewController.swift
//  Closest-Beacon
//
//  Created by Shawn Gerou on 10/15/18.
//  Copyright © 2018 Fanalyticsports. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    let locationManager = CLLocationManager()
    // Create region 
    let region = CLBeaconRegion(proximityUUID: NSUUID(UUIDString: "74278bda-b644-4520-8f0c-720eaf059935")!, identifier: "Fan")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        locationManager.delegate = self
        // Ask for permission to GPS
        // Can change to request always
        // Ask for it if needed
        if (CLLocationManager.authorizationStatus() != CLAuthorizationStatus.AuthorizedWhenInUse) {
                    locationManager.requestWhenInUseAuthorization()
        }
        locationManager.startRangingBeaconsInRegion(region)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func locationManager(manager: CLLocationManager, didRangeBeacons beacons: [CLBeacon], inRegion region: CLBeaconRegion) {
    print(beacons)
    }

}

