//
//  SecondViewController.swift
//  MyVote
//
//  Created by David Araya on 2019-08-29.
//  Copyright © 2019 ElValle. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

final class Annotation: NSObject, MKAnnotation{
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    
    init(coordinate: CLLocationCoordinate2D, title: String?, subtitle: String?) {
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
        
        super.init()
    }
}

/////////////////////////////////////////////////////////////////////////////////////

class SecondViewController: UIViewController {
    
    @IBOutlet var mapView: MKMapView!
    
    var userLatitude: Double = 45.41117
    var userLongitude: Double = -75.69812
    
    let locationManager = CLLocationManager()
    let regionInMeters: Double = 1000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkLocationServices()
        
        mapView.register(MKMarkerAnnotationView.self, forAnnotationViewWithReuseIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier)
        
   let currCoordinate = CLLocationCoordinate2D(latitude: userLatitude, longitude: userLongitude)
        let currAnnotation = Annotation (coordinate: currCoordinate, title: "You", subtitle: "Person who believes their vote does not matter")
        
        mapView.addAnnotation(currAnnotation)
    }
    
    func setupLocationManager() {
        // ERROR CAUSED HERE:
       locationManager.delegate = self
       locationManager.desiredAccuracy = kCLLocationAccuracyBest
    }
    
    func centerViewUserLocation(){
        if let location = locationManager.location?.coordinate {
            let region = MKCoordinateRegion.init(center: location, latitudinalMeters: regionInMeters, longitudinalMeters: regionInMeters)
            mapView.setRegion(region, animated: true)
        }
    }
    
    func checkLocationServices() {
        if CLLocationManager.locationServicesEnabled()
        {
            //setup our location manager
            setupLocationManager()
            checkLocationAuthorization()
        } else {
            //show alert letting the user know they have to turn it on
        }
    }
    
    func checkLocationAuthorization() {
        switch CLLocationManager.authorizationStatus(){
        case .authorizedWhenInUse:
            mapView.showsUserLocation = true
            centerViewUserLocation()
            //Do map stuff
            break
        case .denied:
            //Show alert instructing how to turn on permission
            break
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
            break
        case .restricted:
            //User can not change app status
            // Show alert letting them know whats happening
            break
        case .authorizedAlways:
            break
        @unknown default:
            break
        }
    }
}

/////////////////////////////////////////////////////////////////////////////////////

extension SecondViewController: CLLocationManagerDelegate{
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        //
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        //
    }
}

extension SecondViewController: MKMapViewDelegate{
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if let annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier) as? MKMarkerAnnotationView{
            annotationView.animatesWhenAdded = true
            annotationView.titleVisibility = .adaptive
            annotationView.titleVisibility = .adaptive
            
            return annotationView
        }
        return nil
    }
}
