//
//  ContentView.swift
//  HelloImagePicker
//
//  Created by 李杰穎 on 2021/1/2.
//

import SwiftUI

struct ContentView: View {
    
    @State var isShowPicker: Bool = false
    @State var image: Image? = Image("placeholder")
    @State var isSourceTypeAlbum: Bool = true
    
    var body: some View {
        VStack {
            Text("匯入照片")
                .font(.title)
            image?
                .resizable()
                .scaledToFit()
                .frame(height: 320)
            HStack{
                Button(action: {
                    withAnimation {
                        self.isShowPicker.toggle()
                        self.isSourceTypeAlbum = true
                    }
                }) {
                    Image(systemName: "photo")
                    Text("開啟相簿").font(.headline)
                }
                
                Spacer()
                
                Button(action: {
                    withAnimation {
                        self.isShowPicker.toggle()
                        self.isSourceTypeAlbum = false
                    }
                }) {
                    Image(systemName: "camera")
                    Text("開啟相機").font(.headline)
                }
                        
            }.padding(.horizontal, 50)
            
            Spacer()
            
        }
        .sheet(isPresented: $isShowPicker) {
            ImagePicker(
                image: self.$image,
                isSourceTypeAlbum: self.$isSourceTypeAlbum)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
