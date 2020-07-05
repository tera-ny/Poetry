//
//  Track.swift
//

import Foundation

public enum Track {
    case song(Song)
    case musicVideo(MusicVideo)
}

extension Track: Decodable {
    enum CodingKeys: String, CodingKey {
        case type
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let singleValueContainer = try decoder.singleValueContainer()
        if let value = try container.decodeIfPresent(PoetryType.self, forKey: .type) {
            switch value {
            case .songs:
                self = .song(try singleValueContainer.decode(Song.self))
            case .musicVideos:
                self = .musicVideo(try singleValueContainer.decode(MusicVideo.self))
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
