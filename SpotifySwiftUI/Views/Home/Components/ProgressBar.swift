//
//  ProgressBar.swift
//  SpotifySwiftUI
//
//  Created by Matheus Timbó on 15/05/21.
//

import SwiftUI

struct ProgressBar: View {
    @Binding var value: Float
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle().frame(width: geometry.size.width , height: geometry.size.height * 0.8)
                    .opacity(0.3)
                    .foregroundColor(Color(UIColor.systemTeal))
                
                Rectangle().frame(width: min(CGFloat(self.value)*geometry.size.width, geometry.size.width), height: geometry.size.height)
                    .foregroundColor(Color.white)
                    .animation(.linear)
                
                Circle()
                    .frame(width: 15, height: 15)
                    .foregroundColor(Color.white)
                    .offset(x: max(min( (min(CGFloat(self.value)*geometry.size.width, geometry.size.width) - 7.5), geometry.size.width - 15), 0 ))
                
            }.cornerRadius(45.0)
            .padding(.vertical, 5)
        }
        
    }
}

struct ProgressBar_Previews: PreviewProvider {
    @State static var progressValue: Float = 0.5
    static var previews: some View {
        ProgressBar(value: $progressValue)
            .frame(height: 10)
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 200, height: 40))
    }
}
