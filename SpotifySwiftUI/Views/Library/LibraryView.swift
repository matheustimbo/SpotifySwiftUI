//
//  LibraryView.swift
//  SpotifySwiftUI
//
//  Created by Matheus Timbó on 14/05/21.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        ScrollView{
            Text("Sua Biblioteca")
        }.preferredColorScheme(.dark)
       
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
