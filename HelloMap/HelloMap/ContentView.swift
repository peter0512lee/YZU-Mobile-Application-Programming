//
//  ContentView.swift
//  HelloMap
//
//  Created by 李杰穎 on 2021/1/2.
//

import SwiftUI
import MapKit

struct Restaurant{
    var name:String
    var description:String
    var location:CLLocationCoordinate2D
}

var thisRestaurant = Restaurant(
    name: "無敵蛋餅(原好兇)",
    description: "320桃園市中壢區五興路347號\n+886928210319",
    location:CLLocationCoordinate2D(latitude: 24.9655141,
                                    longitude: 121.1924017))

struct ContentView: View {
    
    @State var currentRestaurant:Restaurant = thisRestaurant
    
    var body: some View {
        VStack{
            MapView(currentRestaurant: $currentRestaurant)
            Text("\(thisRestaurant.name)")
                .frame(height: 50, alignment: .center)
                .font(.title)
        }
        .padding(.all, 10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
