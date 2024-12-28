//
//  Photos.swift
//  AlbumsApp
//
//  Created by Engy on 28/12/2024.
//

import Foundation

struct Photo: Codable {
    let albumId, id: Int
    let title: String
    let url, thumbnailUrl: String
}

typealias Photos = [Photo]
