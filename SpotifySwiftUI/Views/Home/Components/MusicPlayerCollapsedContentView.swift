//
//  MusicPlayerCollapsedContentView.swift
//  SpotifySwiftUI
//
//  Created by Matheus Timbó on 14/05/21.
//

import SwiftUI

struct MusicPlayerCollapsedContentView: View {
    let progressBarColor = Color(red: 79.0/255.0, green: 76.0/255.0, blue: 75.0/255.0)
    
    let fontColor = Color(red: 118.0/255.0, green: 118.0/255.0, blue: 118.0/255.0)
    
    var body: some View {
        GeometryReader { view in
            VStack {
                Spacer()
                    .frame(width: view.size.width, height: 4)
                    .background(progressBarColor)
                
                HStack {
                    Image("anavitoria")
                        .resizable()
                        .frame(width: 48, height: 48)
                    VStack(alignment: .leading) {
                        Text("Amarelo azul e branco")
                            .font(.custom("Avenir Black", size: 12))
                            .foregroundColor(Color.white)
                        Text("ANAVITÓRIA, Rita Lee")
                            .font(.custom("Avenir", size: 14))
                            .foregroundColor(fontColor)
                    }
                    
                    
                    Spacer()
                }
                
                Spacer()
            }
        }
       
    }
}

struct MusicPlayerCollapsedContentView_Previews: PreviewProvider {
    static var previews: some View {
        MusicPlayerCollapsedContentView()
    }
}
