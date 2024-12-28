//
//  Users+Extensions.swift
//  AlbumsApp
//
//  Created by Engy on 28/12/2024.
//

import Foundation

extension User {
    var formattedAddress: String {
        [address.street, address.suite, address.city, address.zipcode].joined(separator: ", ")
    }
}
