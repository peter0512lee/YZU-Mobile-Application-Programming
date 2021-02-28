//
//  SwiftUIView.swift
//  itzy
//
//  Created by 李杰穎 on 2020/12/24.
//

import SwiftUI
import AVKit

struct SongListView: View {
    
    @State var showDetailView = false
    @State var selectedSong:Song?
    @State var PlaySong = false
    
    struct Song: Identifiable {
        var id = UUID()
        var name: String
        var image: String
        var date: String
        var songName: String
    }
    
    var songs = [
        Song(name: "Not Shy", image: "notshy", date: "2020/8/17", songName: "Not Shy"),
        Song(name: "IT'z ME", image: "wannabe", date: "2020/3/9", songName: "Wanna Be"),
        Song(name: "IT'z ICY", image: "icy", date: "2019/7/29", songName: "ICY"),
        Song(name: "IT'z Different", image: "dalla", date: "2019/2/12", songName: "Dalla Dalla")
    ]
    
    struct BasicImageRow: View {
        var thisSong: Song
        var body: some View {
             HStack{
                 Image(thisSong.image)
                     .resizable()
                     .frame(width: 50, height: 50)
                     .cornerRadius(5)
                 Text(thisSong.name)
             }
        }
    }
    
    struct SongDetailView: View {
        var song: Song
        var body: some View {
            VStack{
                Image(song.image)
                 .resizable()
                 .aspectRatio(contentMode: .fit)
                 .clipped()
                Text(song.name)
                    .font(.system(.title, design:.rounded))
                    .fontWeight(.black)
                Spacer()
                Text(song.date)
            }
            
        }
        
    }
    
    struct PlaySongView: View {
        var song: Song
        var body: some View {
            VideoPlayer(player: AVPlayer(
                            url:  Bundle.main.url(
                            forResource: song.songName,
                            withExtension: "mp4")!))
        }
        
    }
    
    var body: some View {
        NavigationView {
            List(songs){ songItem in
                NavigationLink(destination: SongDetailView(song: songItem)) {
                    
                    BasicImageRow(thisSong: songItem)
                        .onTapGesture {
                            self.showDetailView = true
                            self.selectedSong = songItem
                            self.PlaySong = true
                        }
                }
            }
            .sheet(item: self.$selectedSong){ thisSong in
                PlaySongView(song: thisSong)
            }
            .navigationTitle("專輯列表")
        }
    }
}

struct SongListView_Previews: PreviewProvider {
    static var previews: some View {
        SongListView()
    }
}
