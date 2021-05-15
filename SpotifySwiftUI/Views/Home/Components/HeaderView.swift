//
//  HeaderView.swift
//  SpotifySwiftUI
//
//  Created by Matheus Timbó on 14/05/21.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Text("Boa noite")
                .font(.custom("Avenir Black", size: 22))
            Spacer()
            Image("settings")
                .resizable()
                .frame(
                    width: 24, height: 24)
        }
        .padding(.horizontal, 16)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
