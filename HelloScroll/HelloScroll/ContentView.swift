//
//  ContentView.swift
//  HelloScroll
//
//  Created by 李杰穎 on 2020/12/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("ITZY")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
            TabView{
                Text("第一頁")
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Welcome")
                    }
                Text("第二頁")
                    .tabItem {
                        Image(systemName: "list.dash")
                        Text("Member")
                    }
                Text("第三頁")
                    .tabItem {
                        Image(systemName: "photo.fill")
                        Text("Photo")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
