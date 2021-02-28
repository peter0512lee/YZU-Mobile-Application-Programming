//
//  WelcomeView.swift
//  HelloTab
//
//  Created by 李杰穎 on 2020/12/19.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack{
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("Itzy \nMember \nIntro")
                .fontWeight(.heavy)
                .lineSpacing(5)
                .font(.system(size: 32))
                .foregroundColor(.purple)
                .frame(width: 350, height: 150, alignment: .center)
                .background(Color(red: 255/255, green: 150/255, blue: 255/255, opacity: 3.0))
                .cornerRadius(20.0)
                .multilineTextAlignment(.center)
            
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
