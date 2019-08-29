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

class SecondViewController: UIViewController {

    @IBOutlet var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    mapView.register(MKMarkerAnnotationView.self, forAnnotationViewWithReuseIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier)
        
        let currCoordinate = CLLocationCoordinate2D(latitude: 45.244021, longitude: -75.415323)
        let currAnnotation = Annotation (coordinate: currCoordinate, title: "You", subtitle: "Person who believes their vote does not matter")
        
        mapView.addAnnotation(currAnnotation)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension ViewController: MKMapViewDelegate{
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
