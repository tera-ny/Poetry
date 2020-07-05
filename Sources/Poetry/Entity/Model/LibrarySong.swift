//
//  File.swift
//  
//
//  Created by iniad on 2020/07/06.
//

import Foundation

public struct LibrarySong: Resource {
    public struct Attributes: Decodable {
        public let albumName: String
        public let artistName: String
        public let artwork: Artwork
        public let contentRating: String?
        public let discNumber: Int
        public let durationInMillis: Double?
        public let name: String
        public let playParams: PlayParameters?
        public let trackNumber: Int
    }
    
    public struct Relationships: Decodable {
        public let artists: ArtistRelationship?
        public let albums: AlbumRelationship?
    }
    
    public let href: String?
    public let id: String
    public let type: PoetryType
    public let attributes: Attributes?
    public let relationships: Relationships?
}
