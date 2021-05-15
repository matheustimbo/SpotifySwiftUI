//
//  HomeView.swift
//  SpotifySwiftUI
//
//  Created by Matheus Timbó on 14/05/21.
//

import SwiftUI

struct HomeView: View {
    
    
    var body: some View {
        GeometryReader { view in
            ZStack(alignment: .top) {
               BackgroundGradient()
                
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 20 ) {
                        HeaderView()
                        
                        Group {
                            HStack {
                                VStack {
                                    MiniPlaylistCard()
                                    MiniPlaylistCard()
                                    MiniPlaylistCard()
                                }
                                
                                VStack {
                                    MiniPlaylistCard()
                                    MiniPlaylistCard()
                                    MiniPlaylistCard()
                                }
                            }
                        }
                        .padding(.horizontal, 16)
                        
                        MostListenedSectionView()
                        
                        PopularAmongListenersSection()
                        
                        Spacer()
                            .frame(height: 150)
                        
                    }
                    
                }
                .padding(.top,view.safeAreaInsets.top)
                .preferredColorScheme(.dark)
                
                MusicPlayerView(safeAreaBottomHeight: view.safeAreaInsets.bottom)
                    
            }
            .ignoresSafeArea()
        }
        
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
