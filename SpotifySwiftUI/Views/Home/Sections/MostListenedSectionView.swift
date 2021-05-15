//
//  MostListenedSectionView.swift
//  SpotifySwiftUI
//
//  Created by Matheus Timbó on 14/05/21.
//

import SwiftUI

struct MostListenedSectionView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Seus programas mais escutados")
                .font(.custom("Avenir Black", size: 22))
                .padding(.horizontal, 16)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    Spacer()
                        .frame(width: 16)
                    
                    ForEach(musicas) { musica in
                        PlaylistCard()
                    }
                }
            }
        }
    }
}

struct MostListenedSectionView_Previews: PreviewProvider {
    static var previews: some View {
        MostListenedSectionView()
    }
}
