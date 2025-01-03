//
//  NetworkManager.swift
//  AlbumsApp
//
//  Created by Engy on 28/12/2024.
//

import Foundation
import Moya
import Combine
import CombineMoya

protocol NetworkManagerProtocol {
    func fetchUsers() -> AnyPublisher<Users, Error>
    func fetchAlbums(userID: Int) -> AnyPublisher<Albums, Error>
    func fetchPhotos(albumID: Int) -> AnyPublisher<Photos, Error>
}

class NetworkManager: NetworkManagerProtocol {
    static let shared = NetworkManager()
    private let provider = MoyaProvider<AlbumsService>()
    
    private init() {}
    
    func fetchUsers() -> AnyPublisher<Users, Error> {
        return provider.requestPublisher(.users)
            .map(Users.self)
            .mapError { $0 as Error }
            .eraseToAnyPublisher()
    }
    
    func fetchAlbums(userID: Int) -> AnyPublisher<Albums, Error> {
        return provider.requestPublisher(.albums(userID: userID))
            .map(Albums.self)
            .mapError { $0 as Error }
            .eraseToAnyPublisher()
    }
    
    func fetchPhotos(albumID: Int) -> AnyPublisher<Photos, Error> {
        return provider.requestPublisher(.photos(albumID: albumID))
            .map([Photo].self)
            .mapError { $0 as Error }
            .eraseToAnyPublisher()
    }
}

