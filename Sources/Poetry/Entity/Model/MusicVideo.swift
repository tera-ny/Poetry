//
//  MusicVideo.swift
//

import Foundation

public struct MusicVideo: Resource {
    public struct Attributes: Decodable {
        public let albumName: String?
        public let artistName: String
        public let artwork: Artwork
        public let contentRating: String?
        public let durationInMillis: Double?
        public let editorialNotes: EditorialNotes?
        public let genreNames: [String]
        public let isrc: String
        public let name: String
        public let playParams: PlayParameters
        public let previews: [Preview]
        public let releaseDate: PoetryDate?
        public let trackNumber: Int?
        public let url: URL
        public let videoSubType: String?
        public let hasHDR: String
        public let has4K: Bool
    }
    public struct Relationships: Decodable {
        public let albums: AlbumRelationship?
        public let artists: ArtistRelationship?
        public let genres: GenreRelationship?
    }
    public let href: String?
    public let id: String
    public let type: PoetryType
    public let attributes: Attributes?
    public let relationships: Relationships?
}
