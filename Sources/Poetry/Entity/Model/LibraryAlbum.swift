//
//  File.swift
//  
//
//  Created by iniad on 2020/07/05.
//

import Foundation

public struct LibraryAlbum: Resource {
    public struct Attributes: Decodable {
        public let artistName: String
        public let artwork: Artwork
        public let contentRating: String?
        public let name: String
        public let playParams: PlayParameters?
        public let trackCount: Int
    }
    
    public struct Relationships: Decodable {
        public let artists: LibraryArtistRelationship?
        public let tracks: LibraryTrackRelationship?
    }
    
    public let id: String
    public let type: ResourceType
    public let href: String?
    public let attributes: Attributes?
    public let relationships: Relationships?
}
