//
//  Playlist.swift
//

import Foundation

public struct Playlist: Resource {
    public enum PlaylistType: String, Codable {
        case userShared = "user-shared"
        case editorial
        case external
        case personalMix = "personal-mix"
    }
    
    public struct Attributes: Decodable {
        public let artwork: Artwork?
        public let curatorName: String
        public let description: EditorialNotes?
        public let lastModifiedDate: PoetryDate
        public let name: String
        public let playParams: PlayParameters?
        public let playlistType: PlaylistType
        public let url: URL
    }
    
    public struct Relationships: Decodable {
        public let curator: CuratorRelationship
        public let tracks: TrackRelationship
    }
    
    public let attributes: Attributes?
    public let href: String?
    public let id: String
    public let relationships: Relationships?
    public let type: PoetryType
}
