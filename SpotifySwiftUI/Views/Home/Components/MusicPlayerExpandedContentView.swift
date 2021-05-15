//
//  MusicPlayerExpandedContentView.swift
//  SpotifySwiftUI
//
//  Created by Matheus Timbó on 14/05/21.
//

import SwiftUI
import AVKit

struct MusicPlayerExpandedContentView: View {
    
    let fontColor = Color(red: 219.0/255.0, green: 177.0/255.0, blue: 177.0/255.0)
    
    let toggleExpansion: () -> Void
    
    let iconColor = Color(red: 202.0/255.0, green: 173.0/255.0, blue: 171.0/255.0)
    
    @State var progressValue: Float = 0.3
    
    var body: some View {
        GeometryReader { view in
            ZStack(alignment: .top) {
                LinearGradient(gradient: Gradient(colors: [.red, Color(red: 115.0/255.0, green: 45.0/255.0, blue: 45.0/255.0)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .frame(width: view.size.width, height: view.size.height)
                
                VStack() {
                    
                    HStack() {
                        Image(systemName: "chevron.down")
                            .resizable()
                            .frame(
                                width: 18, height: 12)
                            .foregroundColor(Color.white)
                            .onTapGesture {
                                toggleExpansion()
                            }
                        
                        Spacer()
                        
                        Text("This is AC/DC")
                            .font(.custom("Avenir", size: 16))
                            .foregroundColor(Color.white)
                        
                        Spacer()
                        
                        Image(systemName: "gear")
                            .resizable()
                            .frame(
                                width: 16, height: 16)
                            .foregroundColor(Color.white)
                    }
                    .padding(.horizontal, 16)
                    .padding(.top, 45)
                    
                    Spacer()
                        .frame(height: 48)
                    
                    Image("anavitoria")
                        .resizable()
                        .frame(width: view.size.width - 32, height: view.size.width - 32)
                        
                    Spacer()
                        .frame(height: 48)
                    
                    VStack {
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Live Wire")
                                    .font(.custom("Avenir Black", size: 24))
                                    .foregroundColor(Color.white)
                                
                                Text("AC/DC")
                                    .foregroundColor(fontColor)
                            }
                            
                            Spacer()
                            
                            Image(systemName: "heart")
                                .resizable()
                                .frame(
                                    width: 20, height: 20)
                                .foregroundColor(Color.white)
                        }
                        
                        Spacer()
                            .frame(height: 24)
                        
                        ProgressBar(value: $progressValue)
                            .frame(height: 4)
                        HStack {
                            Text("0:03")
                                .font(.custom("Avenir ", size: 10))
                                .foregroundColor(Color.white)
                            
                            Spacer()
                            
                            Text("-2:50")
                                .font(.custom("Avenir ", size: 10))
                                .foregroundColor(Color.white)
                        }
                        .padding(.top, 6)
                        
                        HStack {
                            Image(systemName: "shuffle")
                                .resizable()
                                .frame(width: 16, height: 16)
                                .foregroundColor(iconColor)
                            
                            Spacer()
                            
                            Image(systemName: "backward.end.fill")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundColor(Color.white)
                            
                            Spacer()
                            
                            Image(systemName: "pause.circle.fill")
                                .resizable()
                                .frame(width: 56, height: 56)
                                .foregroundColor(Color.white)
                            
                            Spacer()
                            
                            Image(systemName: "forward.end.fill")
                                .resizable()
                                .frame(width: 24, height:24)
                                .foregroundColor(Color.white)
                            
                            Spacer()
                            
                            Image(systemName: "repeat")
                                .resizable()
                                .frame(width: 16, height: 16)
                                .foregroundColor(iconColor)
                        }
                        .padding(.top, 10)
                        .padding(.bottom, 20)
                    }
                    .padding(.horizontal, 16)
                    
                    
                }
                
                
               
            }
            .onTapGesture {
                
            }
        }
        .ignoresSafeArea()
       
        
    }
}

struct MusicPlayerExpandedContentView_Previews: PreviewProvider {
    static var previews: some View {
        MusicPlayerExpandedContentView(toggleExpansion: {})
    }
}
