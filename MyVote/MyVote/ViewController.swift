//
//  ViewController.swift
//  MyVote
//
//  Created by David Araya on 2019-08-25.
//  Copyright © 2019 ElValle. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, UITextFieldDelegate{

    var userLat: Double = 0
    
    @IBOutlet var mapView: MKMapView!
    @IBAction func initButton(_ sender: UIStoryboardSegue) {}
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
