//
//  ContentView.swift
//  name-card
//
//  Created by Josh Courtney on 5/3/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("headshot")
                    .resizable()
                    .frame(width: 160, height: 160)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 6)
                    )
                Text("Josh Courtney")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .font(.system(size: 24))
                    .foregroundColor(.white)
                Divider()
                InfoView(image: "phone.fill", text: "+1 224 405 0840")
                InfoView(image: "envelope.fill", text: "joshrcourtney@gmail.com")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
