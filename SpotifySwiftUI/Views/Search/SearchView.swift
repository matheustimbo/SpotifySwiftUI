//
//  SearchView.swift
//  SpotifySwiftUI
//
//  Created by Matheus Timbó on 14/05/21.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        ScrollView {
            Text("Buscar")
        }.preferredColorScheme(.dark)
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
