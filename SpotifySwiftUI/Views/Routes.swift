//
//  Routes.swift
//  SpotifySwiftUI
//
//  Created by Matheus Timbó on 14/05/21.
//

import SwiftUI

struct Routes: View {
    var body: some View {
        GeometryReader {view in
            TabView {
                HomeView()
                    .tabItem {
                        Text("Início")
                    }
                SearchView()
                    .tabItem {
                        Text("Buscar")
                    }
                LibraryView()
                    .tabItem {
                        Text("Sua Biblioteca")
                    }
            }
        }
    }
}

struct Routes_Previews: PreviewProvider {
    static var previews: some View {
        Routes()
    }
}
