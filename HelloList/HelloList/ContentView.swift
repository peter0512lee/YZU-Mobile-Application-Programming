//
//  ContentView.swift
//  HelloList
//
//  Created by 李杰穎 on 2020/11/28.
//

import SwiftUI


struct ContentView: View {
    
    struct Restaurant {
        var name:String
        var image:String
    }
    
    
    
    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham AvenueMeats And Deli", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]

    var restaurantImages = ["cafedeadend", "homei", "teakha", "cafeloisl", "petiteoyster", "forkeerestaurant", "posatelier", "bourkestreetbakery", "haighschocolate", "palominoespresso", "upstate", "traif", "grahamavenuemeats", "wafflewolf", "fiveleaves", "cafelore", "confessional", "barrafina", "donostia", "royaloak", "caskpubkitchen"]
    
    var body: some View {
        List(restaurantNames.indices, id: \.self) {
            index in
            HStack {
                Image(self.restaurantImages[index])
                    .resizable()
                    .frame(width: 70, height: 70)
                    .cornerRadius(7.0)
                Text(self.restaurantNames[index])
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
