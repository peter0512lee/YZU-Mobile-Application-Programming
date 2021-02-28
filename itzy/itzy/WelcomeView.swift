//
//  WelcomeView.swift
//  itzy
//
//  Created by 李杰穎 on 2020/12/22.
//

import SwiftUI

struct WelcomeView: View {
    
    @State private var animationAmount = 0.0
    
    var body: some View {

        VStack(spacing: 30){
            Image("all")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
//            Button("Itzy \nAll in us!") {
//
//                withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
//                    self.animationAmount += 360
//                }
//            }
//            .padding(50)
//            .frame(width: 350, height: 200, alignment: .center)
//            .lineSpacing(5)
//            .font(.system(size: 32))
//            .background(Color(red: 255/255, green: 150/255, blue: 255/255, opacity: 3.0))
//            .foregroundColor(.purple)
//            .cornerRadius(20.0)
//            .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
//            .multilineTextAlignment(.center)
            
            HStack{
                Link(destination: URL(string: "https://www.facebook.com/OfficialItzy")!,
                     label: { Image("facebook-icon")
                        .renderingMode(.template)
                        .foregroundColor(.white)
                     })
                Link(destination: URL(string: "https://www.instagram.com/itzy.all.in.us/")!,
                     label: { Image("instagram-icon")
                        .renderingMode(.template)
                        .foregroundColor(.white) })
                Link(destination: URL(string: "https://www.youtube.com/c/ITZY")!,
                     label: { Image("youtube-icon")
                        .renderingMode(.template)
                        .foregroundColor(.white) })
                Link(destination: URL(string: "https://twitter.com/ITZYOfficial")!,
                     label: { Image("twitter-icon")
                        .renderingMode(.template)
                        .foregroundColor(.white) })
                Link(destination: URL(string: "https://open.spotify.com/artist/2KC9Qb60EaY0kW4eH68vr3?si=NYvW9IORQkW8V7HqigF1Rg")!,
                     label: { Image("spotify-icon")
                        .renderingMode(.template)
                        .foregroundColor(.white) })
                
                
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
            .preferredColorScheme(.dark)
    }
}
