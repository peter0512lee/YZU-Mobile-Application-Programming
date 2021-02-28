//
//  CardView.swift
//  HelloScroll
//
//  Created by 李杰穎 on 2020/12/19.
//

import SwiftUI

struct CardView: View {
    var image:String
    var personNameUS:String
    var personNameTW:String
    var personIcon:String
    
    var body: some View {
        VStack{
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            VStack(alignment: .leading){
                Text(personNameUS)
                    .font(.headline)
                    .foregroundColor(.secondary)
                Text(personNameTW)
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(.primary)
                    .lineLimit(3)
                Text(personIcon)
                    .font(.caption)
                    .foregroundColor(.purple)
            }
            .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 15)
            .padding(.bottom, 10)
        }
        .background(Color(red: 255/255, green: 204/255, blue: 255/255))
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.gray, lineWidth: 2)
        )// 灰色外框
        .padding(.all, 10)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView{
            VStack{
                Text("ITZY")
                    .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 10)
                    .foregroundColor(.secondary)
                Text("RyuJin Photograph")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 10)
                CardView(image: "RJ_1", personNameUS: "RyuJin", personNameTW: "留真", personIcon: "😊")
                CardView(image: "RJ_2", personNameUS: "RyuJin", personNameTW: "留真", personIcon: "😕")
                CardView(image: "RJ_3", personNameUS: "RyuJin", personNameTW: "留真", personIcon: "😮")
                CardView(image: "RJ_4", personNameUS: "RyuJin", personNameTW: "留真", personIcon: "🙂")
                CardView(image: "RJ_5", personNameUS: "RyuJin", personNameTW: "留真", personIcon: "😚")
            }
        }
    }
}
