//
//  PopularAmongListenersSection.swift
//  SpotifySwiftUI
//
//  Created by Matheus Timbó on 14/05/21.
//

import SwiftUI

struct PopularAmongListenersSection: View {
    let fontColor = Color(red: 118.0/255.0, green: 118.0/255.0, blue: 118.0/255.0)
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Spacer()
                    .frame(width: 16)
                
                Image("hipsterstech")
                    .resizable()
                    .frame(width: 48, height: 48)
                    .cornerRadius(8.0)
                
                VStack(alignment: .leading) {
                    Text("Popular entre os ouvintes de".uppercased())
                        .font(.custom("Avenir Black", size: 10))
                        .foregroundColor(fontColor)
                    
                    Text("Hipsters Ponto Tech")
                        .font(.custom("Avenir Black", size: 18))
                        .foregroundColor(Color.white)
                }
                
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    Spacer()
                        .frame(width: 16)
                    
                    PlaylistCard()
                    PlaylistCard()
                    PlaylistCard()
                    PlaylistCard()
                    PlaylistCard()
                }
            }
        }
    }
}

struct PopularAmongListenersSection_Previews: PreviewProvider {
    static var previews: some View {
        PopularAmongListenersSection()
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 500, height: 300))
    }
}
