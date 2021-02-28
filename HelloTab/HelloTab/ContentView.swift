//
//  ContentView.swift
//  HelloTab
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
                WelcomeView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Welcome")
                    }
                MemberListView()
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

