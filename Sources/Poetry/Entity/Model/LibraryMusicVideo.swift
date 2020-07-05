//
//  LibraryMusicVideo.swift
//

import Foundation

public struct LibraryMusicVideo: Resource {
    public struct Attributes: Decodable {
        public let albumName: String
        public let artistName: String
        public let artwork: Artwork
        public let contentRating: String?
        public let durationInMillis: Double?
        public let name: String
        public let playParams: PlayParameters
        public let trackNumber: Int?
    }
    public struct Relationships: Decodable {
        public let albums: AlbumRelationship?
        public let artists: ArtistRelationship?
    }
    public let href: String?
    public let id: String
    public let type: PoetryType
    public let attributes: Attributes?
    public let relationships: Relationships?
}
