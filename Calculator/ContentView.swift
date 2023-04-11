//
//  ContentView.swift
//  Calculator
//
//  Created by uran on 23.03.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.10, green: 0.74, blue: 0.61).ignoresSafeArea()
            VStack{
                Image("ava").resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(
                        width: 150,
                        height: 150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(lineWidth: 5))
                Text("Yurii Misko!")
                    .font(.title2)
                    .fontWeight(.heavy)
                Text("IOS developer / Data Scintist")
                    .font(.headline)
                    .fontWeight(.light)
                Divider()
                Card(image:"phone.fill", message: "+3809716355418")
                Card(image:"envelope.fill", message: "mikolaura58@gmail.com")

            }
            .padding(.leading)
        }.foregroundColor(.white)
        
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Card: View {
    let image: String
    let message: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: image)
                Text(message)
                    .fontWeight(.semibold)
            }.foregroundColor(Color(red: 0.10, green: 0.74, blue: 0.61)))
    }
}
