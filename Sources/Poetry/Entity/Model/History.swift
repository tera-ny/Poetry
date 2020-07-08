//
//  File.swift
//  
//
//  Created by iniad on 2020/07/07.
//

import Foundation

public enum AnyMediaResource {
    case song(Song)
    case musicVideo(MusicVideo)
    case album(Album)
    case station(Station)
    case librarySong(LibrarySong)
    case libraryAlbum(LibraryAlbum)
    case libraryMusicVideo(LibraryMusicVideo)
}

extension AnyMediaResource: Decodable {
    enum CodingKeys: String, CodingKey {
        case type
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let singleValueContainer = try decoder.singleValueContainer()
        if let value = try container.decodeIfPresent(ResourceType.self, forKey: .type) {
            switch value {
            case .songs:
                self = .song(try singleValueContainer.decode(Song.self))
            case .musicVideos:
                self = .musicVideo(try singleValueContainer.decode(MusicVideo.self))
            case .albums:
                self = .album(try singleValueContainer.decode(Album.self))
            case .stations:
                self = .station(try singleValueContainer.decode(Station.self))
            case .librarySongs:
                self = .librarySong(try singleValueContainer.decode(LibrarySong.self))
            case .libraryAlbums:
                self = .libraryAlbum(try singleValueContainer.decode(LibraryAlbum.self))
            case .libraryMusicVideos:
                self = .libraryMusicVideo(try singleValueContainer.decode(LibraryMusicVideo.self))
            default:
                throw DecodingError.dataCorrupted(DecodingError.Context(
                    codingPath: container.codingPath,
                    debugDescription: "Unexpected type"
                ))
            }
        } else {
            throw DecodingError.dataCorrupted(DecodingError.Context(
                codingPath: container.codingPath,
                debugDescription: "Unknown case"
            ))
        }
    }
}

public typealias History = AnyMediaResource
