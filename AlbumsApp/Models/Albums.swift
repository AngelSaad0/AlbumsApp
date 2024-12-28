//
//  Albums.swift
//  AlbumsApp
//
//  Created by Engy on 28/12/2024.
//

import Foundation

struct Album: Codable {
    let userId, id: Int
    let title: String
}

typealias Albums = [Album]
