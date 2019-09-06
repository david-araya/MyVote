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
    
    @IBOutlet var initializeButton: UIButton(type: .custom)
    
    @IBAction func initButton(_ sender: UIStoryboardSegue) {}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initializeButton.frame = CGRect(x: 160, y: 100, width: 50, height: 50)
        initializeButton.layer.cornerRadius = 0.5 * initializeButton.bounds.size.width
        initializeButton.clipsToBounds = true
        view.addSubview(initializeButton)
    }
}
