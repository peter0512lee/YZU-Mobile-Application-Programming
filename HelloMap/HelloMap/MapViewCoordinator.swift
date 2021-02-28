//
//  MapViewCoordinator.swift
//  HelloMap
//
//  Created by 李杰穎 on 2021/1/2.
//

import SwiftUI
import MapKit

class MapViewCoordinator: NSObject, MKMapViewDelegate {
    
    var mapViewController: MapView
    
    init(_ control: MapView) {
        self.mapViewController = control
    }
    
    func mapView(_ mapView: MKMapView, viewFor
                annotation: MKAnnotation) -> MKAnnotationView?{
         //Custom View for Annotation
        let annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "customView")
        annotationView.canShowCallout = true //Your custom image icon
        annotationView.image = UIImage(systemName: "flag")
        
        return annotationView
    }
    
}
