//
//  MapView.swift
//  HelloMap
//
//  Created by 李杰穎 on 2021/1/2.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    @Binding var currentRestaurant:Restaurant
    
//    let landmarks = LandmarkAnnotation.requestMockData()
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = currentRestaurant.location
        let span = MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
        view.delegate = context.coordinator
//        view.addAnnotations(landmarks)
        
        let landmark = LandmarkAnnotation(
            title: currentRestaurant.name,
            subtitle: currentRestaurant.description,
            coordinate: currentRestaurant.location)
        view.addAnnotation(landmark)
        view.selectAnnotation(landmark, animated: true)
    }
    
    func makeCoordinator() -> MapViewCoordinator{
        MapViewCoordinator(self)
    }
    
}

//struct MapView_Previews: PreviewProvider {
//    static var previews: some View {
//        MapView()
//    }
//}
