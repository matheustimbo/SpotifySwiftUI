//
//  Song.swift
//  SpotifySwiftUI
//
//  Created by Matheus Timbó on 15/05/21.
//

import Foundation

struct Song: Codable, Identifiable {
    var id: Int
    var titulo: String
    var cantores: String
    var foto: String
}
