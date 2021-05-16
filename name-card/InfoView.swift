//
//  InfoView.swift
//  name-card
//
//  Created by Josh Courtney on 5/3/21.
//

import SwiftUI

struct InfoView: View {
    let image: String
    let text: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 24)
                .fill(Color.white)
                .frame(height: 48)
                .padding(.all)
            HStack {
                Image(systemName: image)
                    .foregroundColor(
                        Color(red: 0.09, green: 0.63, blue: 0.52)
                    )
                Text(text)
            }
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(image: "phone.fill", text: "Hello")
            .previewLayout(.sizeThatFits)
    }
}
