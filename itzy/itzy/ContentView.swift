//
//  ContentView.swift
//  itzy
//
//  Created by 李杰穎 on 2020/12/22.
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
                        Text("Home")
                    }
                MemberListView()
                    .tabItem {
                        Image(systemName: "person.3.fill")
                        Text("Member")
                    }
                SongListView()
                    .tabItem {
                        Image(systemName: "music.note.list")
                        Text("Song")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
