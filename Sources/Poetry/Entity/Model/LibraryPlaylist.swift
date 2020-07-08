//
//  LibraryPlaylist.swift
//

import Foundation

public struct LibraryPlaylist: Resource {
    public struct Attributes: Decodable {
        public let artwork: Artwork?
        public let description: String?
        public let name: String
        public let playParams: PlayParameters?
        public let playlistType: Bool
    }
    
    public struct Relationships: Decodable {
        public let tracks: LibraryTrackRelationship?
    }
    
    public let attributes: Attributes?
    public let href: String?
    public let id: String
    public let relationships: Relationships?
    public let type: ResourceType
}
