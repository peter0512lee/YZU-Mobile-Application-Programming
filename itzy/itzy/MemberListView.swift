//
//  MemberListView.swift
//  itzy
//
//  Created by 李杰穎 on 2020/12/22.
//

import SwiftUI

struct MemberListView: View {
    @State var showDetailView = false
    @State var selectedMember:Member?
    
    struct Member: Identifiable {
        var id = UUID()
        var name:String
        var image:String
        var 本名:String
        var 出生:String
        var 身高:String
        var 出道日期:String
        
    }
    
    var members = [
        Member(name: "Yeji", image: "yeji2", 本名: "黃禮志", 出生: "2000/5/26", 身高: "169cm", 出道日期: "2019/2/12"),
        Member(name: "RyuJin", image: "RJ2", 本名: "申留真", 出生: "2001/4/17", 身高: "164cm", 出道日期: "2019/2/12"),
        Member(name: "Lia", image: "lia2", 本名: "崔智壽", 出生: "2000/7/21", 身高: "162cm", 出道日期: "2019/2/12"),
        Member(name: "ChaeRyeong", image: "chaeryeong2", 本名: "李彩領", 出生: "2001/6/5", 身高: "167cm", 出道日期: "2019/2/12"),
        Member(name: "Yuna", image: "yuna2", 本名: "申有娜", 出生: "2003/12/19", 身高: "169cm", 出道日期: "2019/2/12"),
    ]
    
    struct BasicImageRow: View {
        var thisMember:Member
        var body: some View {
             HStack{
                 Image(thisMember.image)
                     .resizable()
                     .frame(width: 50, height: 50)
                     .cornerRadius(5)
                 Text(thisMember.name)
             }
        }
    }
    
    struct MemberDetailView: View {
        var member:Member
        var body: some View {
            VStack(spacing: 20){
                Image(member.image)
                    .resizable()
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                Text(member.name)
                    .font(.system(.title, design:.rounded))
                    .fontWeight(.black)
                VStack(spacing: 20) {
                    Text("本名：" + member.本名)
                    Text("出生：" + member.出生)
                    Text("身高：" + member.身高)
                    Text("出道日期：" + member.出道日期)
                }
                Spacer()
                
                
            }
            
        }
        
    }
    
    var body: some View {
        NavigationView{
            List(members) { memberItem in
                NavigationLink(destination: MemberDetailView(member: memberItem)) {
                    BasicImageRow(thisMember: memberItem)
                        .onTapGesture {
                            self.showDetailView = true
                            self.selectedMember = memberItem
                            
                        }
                }
            }
            
        .navigationBarTitle("成員列表")
        }
    }
    
    
}

struct MemberListView_Previews: PreviewProvider {
    static var previews: some View {
        MemberListView()
            .preferredColorScheme(.dark)
    }
}

