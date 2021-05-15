//
//  MiniPlaylistCard.swift
//  SpotifySwiftUI
//
//  Created by Matheus Timbó on 14/05/21.
//

import SwiftUI

struct MiniPlaylistCard: View {
    let bgColor = Color(red: 38.0/255.0, green: 38.0/255.0, blue: 38.0/255.0)
    
    var body: some View {
        GeometryReader { view in
            HStack {
                Image("anavitoria")
                    .resizable()
                    .frame(
                        width: 56, height: 56, alignment: .trailing)
                
                Text("This Is ANAVITÓRIA")
                    .font(.custom("Avenir Black", size: 11))
                    .foregroundColor(Color.white)
                Spacer()
            }
            .frame(width: view.size.width, height: 56)
            .background(bgColor)
            .cornerRadius(5.0)
        }
        .frame(
            height: 56)
    }
}

struct MiniPlaylistCard_Previews: PreviewProvider {
    static var previews: some View {
        MiniPlaylistCard()
            .previewLayout(.fixed(width: 300, height: 56))
    }
}
