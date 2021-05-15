//
//  MusicPlayerView.swift
//  SpotifySwiftUI
//
//  Created by Matheus Timbó on 14/05/21.
//

import SwiftUI
import AVKit

struct MusicPlayerView: View {
    var safeAreaBottomHeight: CGFloat
    
    @State var expanded: Bool = false
    @State private var dragOffset = CGSize.zero
    @State private var showExpandedContent = false
    
    let bgColor = Color(red: 40.0/255.0, green: 40.0/255.0, blue: 40.0/255.0)
    
    func toggleExpansion() {
        expanded = !expanded
        showExpandedContent = expanded
    }
    
    var body: some View {
        GeometryReader { view in
            VStack {
                VStack(alignment: .leading) {
                    ZStack {
                        MusicPlayerExpandedContentView(toggleExpansion: toggleExpansion)
                            .opacity(showExpandedContent ? 1 : 0)

                        MusicPlayerCollapsedContentView()
                            .opacity(showExpandedContent ? 0 : 1)
                            .onTapGesture {
                                toggleExpansion()
                            }
                    }
                    
                }.frame(
                    width: view.size.width,
                    height: expanded ? view.size.height - self.dragOffset.height : 50 + safeAreaBottomHeight - self.dragOffset.height
                )
                .background(bgColor)
                .animation(.easeInOut)
            }
            .frame(
                width: view.size.width,
                height: view.size.height,
                alignment: .bottom
            )
            .gesture(
                DragGesture()
                    .onChanged({ value in
                        
                        let currentHeight = expanded ? view.size.height - self.dragOffset.height : 50 + safeAreaBottomHeight - self.dragOffset.height
                        
                        print("current Height \(currentHeight)")
                        
                        if (currentHeight - value.translation.height > 135) {
                            dragOffset = value.translation
                        }
                        
                        showExpandedContent = currentHeight > 200
                    })
                    .onEnded({ value in
                        if abs(value.translation.height) > 60 {
                            expanded = !expanded
                        }
                        
                        showExpandedContent = expanded
                        dragOffset = CGSize.zero
                    })
            )
            
            
        }
        .edgesIgnoringSafeArea(.bottom)
        
        
    }
}

struct MusicPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        MusicPlayerView(safeAreaBottomHeight: 20.0)
            .previewLayout(.fixed(width: 500, height: 70))
    }
}
