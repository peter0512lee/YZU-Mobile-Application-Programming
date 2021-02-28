//
//  ContentView.swift
//  HelloText
//
//  Created by 李杰穎 on 2020/10/24.
//

import SwiftUI

struct ContentView: View {
    @State var number = 0
    var Dict = [0: "Scissor", 1: "Rock", 2: "Paper"]
    var body: some View {
        
        VStack {
            TitleView()
            HStack {
                FruitView(imageName: "apple")
                FruitView(imageName: "banana")
                FruitView(imageName: "guava")
            }
            ZStack {
                FishView()
                Text("2020/12/31")
                    .font(.system(size: 20))
                    .foregroundColor(.yellow)
                    .padding(.all, 5)
                    .background(Color.black)
                    .opacity(0.7)
                    .offset(x: 70, y: 20)
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TitleView: View {
    var body: some View {
        VStack(alignment:.center, spacing:2) {
            Text("Ryan的")
                .font(.system(size:30))
            Text("冰箱")
                .font(.title)
                .foregroundColor(Color(red: 29 / 255, green: 40 / 255, blue: 192 / 255))
        }
    }
}

struct FruitView: View {
    var imageName:String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.screenWidth/2-20, alignment: .center)
            Text(imageName.capitalized)
                .fontWeight(.bold)
                .font(.system(size: 30))
        }
        .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 0, idealHeight: 100, maxHeight: .infinity, alignment: .center)
    }
}

struct FishView: View {
    var body: some View {
        VStack {
            Image("fish")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.all, 15)
            Text("Fish")
                .fontWeight(.bold)
                .font(.system(size: 30))
        }
    }
}

extension UIScreen {
    static let screenWidth = UIScreen.main.bounds.size.width
    static let screenHeight = UIScreen.main.bounds.size.height
    static let screenSize = UIScreen.main.bounds.size
}
