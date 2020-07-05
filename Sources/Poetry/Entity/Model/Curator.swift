//
//  Curator.swift
//

import Foundation

public struct Curator: Resource {
    public struct Attributes: Decodable {
        public let artwork: Artwork
        public let editorialNotes: EditorialNotes?
        public let name: String
        public let url: URL
    }
    
    public struct Relationships: Decodable {
        public let playlists: PlaylistRelationship
    }
    
    public let type: PoetryType
    public let attributes: Attributes?
    public let href: String?
    public let id: String
    public let relationships: Relationships?
}

public typealias AppleCurator = Curator
