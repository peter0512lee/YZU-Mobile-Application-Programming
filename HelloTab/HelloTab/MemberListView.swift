//
//  MemberListView.swift
//  HelloTab
//
//  Created by 李杰穎 on 2020/12/19.
//

import SwiftUI

struct MemberListView: View {
    @State var showDetailView = false
    @State var selectedMember:Member?
    
    struct Member: Identifiable {
        var id = UUID()
        var name:String
        var image:String
        var description:String
    }
    
    var members = [
        Member(name: "Yeji", image: "RJ_1", description: "Yeji介紹"),
        Member(name: "Ryujin", image: "RJ_2", description: "Ryujin介紹"),
        Member(name: "Lia", image: "RJ_3", description: "Lia介紹"),
        Member(name: "Chaeyoung", image: "RJ_4", description: "Chaeyoung介紹"),
        Member(name: "Yuna", image: "RJ_5", description: "Yuna介紹"),
    ]
    
    struct BasicImageRow: View {
        var thisMember:Member
        var body: some View {
                     HStack{
                         Image(thisMember.image)
                             .resizable()
                             .frame(width: 40, height: 40)
                             .cornerRadius(5)
                         Text(thisMember.name)
                     }
        }
    }
    
    struct MemberDetailView: View {
        var member:Member
        var body: some View {
            VStack{
                Image(member.image)
                 .resizable()
                 .aspectRatio(contentMode: .fill)
                 .clipped()
                Text(member.name)
                    .font(.system(.title, design:.rounded))
                    .fontWeight(.black)
                Spacer()
            }
            
        }
        
    }
    
    var body: some View {
        NavigationView{
        List(members){ memberItem in
            BasicImageRow(thisMember: memberItem)
                .onTapGesture {
                    self.showDetailView = true
                    self.selectedMember = memberItem
                    
                }
        }
        .sheet(item: self.$selectedMember){ thisMember in
            MemberDetailView(member: thisMember)
        }
        .navigationBarTitle("課程列表")
        }
    }
    
    
}

struct MemberListView_Previews: PreviewProvider {
    static var previews: some View {
        MemberListView()
    }
}
