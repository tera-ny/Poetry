//
//  File.swift
//  
//
//  Created by iniad on 2020/07/05.
//

import Foundation

public struct Album: Resource {
    public struct Attributes: Decodable {
        public let albumName: String?
        public let artistName: String
        public let artwork: Artwork?
        public let contentRating: String?
        public let copyrignt: String?
        public let genreNames: [String]
        public let isComplete: Bool
        public let isSingle: Bool
        public let name: String
        public let playParams: PlayParameters?
        public let editorialNotes: EditorialNotes?
        public let recordLabel: String
        public let releaseDate: PoetryDate?
        public let trackCount: Int
        public let url: URL
        public let isMasteredForItunes: Bool
    }
    
    public struct Relationships: Decodable {
        public let artists: ArtistRelationship?
        public let tracks: TrackRelationship?
        public let genres: GenreRelationship?
    }
    
    public let id: String
    public let type: PoetryType
    public let href: String?
    public let attributes: Attributes?
    public let relationships: Relationships?
}
