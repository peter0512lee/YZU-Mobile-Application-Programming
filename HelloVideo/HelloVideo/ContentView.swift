//
//  ContentView.swift
//  HelloVideo
//
//  Created by 李杰穎 on 2020/12/22.
//

import SwiftUI
import AVKit

struct ContentView: View {
    var body: some View {
        VideoPlayer(player: AVPlayer(
                        url:  Bundle.main.url(
                        forResource: "videoplayback1",
                        withExtension: "mp4")!)) {
            VStack {
                Text("SwiftUI")
                    .font(.caption)
                    .foregroundColor(.white)
                    .background(Color.black.opacity(0.7))
                    .clipShape(Capsule())
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
