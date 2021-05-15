//
//  PlaylistCard.swift
//  SpotifySwiftUI
//
//  Created by Matheus Timbó on 14/05/21.
//

import SwiftUI

struct PlaylistCard: View {
    let fontColor = Color(red: 118.0/255.0, green: 118.0/255.0, blue: 118.0/255.0)
    
    var body: some View {
        VStack(alignment: .leading) {
            Image("laurinhalelo")
                .resizable()
                .frame(width: 156, height: 156)
                .cornerRadius(8.0)
            
            Text("Respondendo em Voz Alta")
                .font(.custom("Avenir Black", size: 12))
                .foregroundColor(Color.white)
            
            Text("Show Laurinha Lero")
                .font(.custom("Avenir", size: 10))
                .foregroundColor(fontColor)
                .padding(.bottom, 4)
                
        }
        .frame(width: 156)
    }
}

struct PlaylistCard_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistCard()
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 156, height: 200))
    }
}
