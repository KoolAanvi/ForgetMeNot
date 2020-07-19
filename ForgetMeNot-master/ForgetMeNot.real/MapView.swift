//
//  MapView.swift
//  ForgetMeNot.real
//
//  Created by Arvind Koolwal on 7/19/20.
//  Copyright © 2020 alisha bridgehacks. All rights reserved.
//

import UIKit
import MapKit

class MapView: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    struct Locations {
        var name: String
        var longtitude: CLLocationDegrees
        var latitude: CLLocationDegrees
    }
  
    var pins = [Locations(name: "TulePonds", longtitude: 37.5578, latitude: -121.9737),
                Locations(name: "Our City Forest", longtitude: 37.356110, latitude: -121.967760),
                Locations(name: "The Sierra Club Treaty", longtitude: 37.893800, latitude: -121.278280),
                Locations(name: "Save The Bay", longtitude: 37.805660, latitude: -122.271150)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mapView.delegate = self
        
        for location in pins {
            let annotation = MKPointAnnotation()
            annotation.title = "\(location.name)"
            //You can also add a subtitle that displays under the annotation such as
            annotation.subtitle = "go here"
            annotation.coordinate = CLLocationCoordinate2D(latitude: location.longtitude, longitude: location.latitude)
            print(annotation.title as Any)
            self.mapView.addAnnotation(annotation)
        }
        
        self.mapView.setRegion(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.872, longitude: -122.2913), span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)), animated: true)
        
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        guard annotation is MKPointAnnotation else { return nil }

        let identifier = "Annotation"
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)

        if annotationView == nil {
            annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            annotationView!.canShowCallout = true
        } else {
            annotationView!.annotation = annotation
        }

        return annotationView
    }
}
