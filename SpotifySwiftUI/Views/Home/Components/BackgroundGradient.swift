//
//  BackgroundGradient.swift
//  SpotifySwiftUI
//
//  Created by Matheus Timbó on 14/05/21.
//

import SwiftUI

struct BackgroundGradient: View {
    var body: some View {
        GeometryReader { view in
            LinearGradient(gradient: Gradient(colors: [Color(red: 45.0/255.0, green: 45.0/255.0, blue: 45.0/255.0), .black, .black]), startPoint: .topLeading, endPoint: .bottom)
                .frame(width: view.size.width, height: 200)
        }
    }
}

struct BackgroundGradient_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundGradient()
    }
}
