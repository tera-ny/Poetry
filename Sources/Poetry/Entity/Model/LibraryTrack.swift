//
//  File.swift
//  
//
//  Created by iniad on 2020/07/06.
//

import Foundation

public enum LibraryTrack {
    case song(LibrarySong)
    case musicVideo(LibraryMusicVideo)
}

extension LibraryTrack: Decodable {
    enum CodingKeys: String, CodingKey {
        case type
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let singleValueContainer = try decoder.singleValueContainer()
        if let value = try container.decodeIfPresent(PoetryType.self, forKey: .type) {
            switch value {
            case .librarySongs:
                self = .song(try singleValueContainer.decode(LibrarySong.self))
            case .libraryMusicVideos:
                self = .musicVideo(try singleValueContainer.decode(LibraryMusicVideo.self))
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
