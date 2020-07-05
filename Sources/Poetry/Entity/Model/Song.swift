//
//  File.swift
//  
//
//  Created by iniad on 2020/07/05.
//

import Foundation

public struct Song: Resource {
    public struct Attributes: Decodable {
        public let albumName: String
        public let artistName: String
        public let artwork: Artwork
        public let composerName: String?
        public let contentRating: String?
        public let discNumber: Int
        public let durationInMillis: Double?
        public let editorialNotes: EditorialNotes?
        public let genreNames: [String]
        public let isrc: String
        public let movementCount: Int?
        public let movementName: String?
        public let movementNumber: Int?
        public let name: String
        public let playParams: PlayParameters?
        public let previews: [Preview]
        public let releaseDate: PoetryDate?
        public let trackNumber: Int
        public let url: URL
        public let workName: String?
    }
    
    public struct Relationships: Decodable {
        public let artists: ArtistRelationship?
        public let albums: AlbumRelationship?
        public let genres: GenreRelationship?
        public let station: StationRelationship?
    }
    
    public let href: String?
    public let id: String
    public let type: PoetryType
    public let attributes: Attributes?
    public let relationships: Relationships?
}
