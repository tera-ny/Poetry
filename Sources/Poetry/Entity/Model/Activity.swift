//
//  File.swift
//  
//
//  Created by iniad on 2020/07/07.
//

import Foundation

public struct Activity: Resource {
    public struct Attributes: Decodable {
        public let artwork: Artwork
        public let editorialNotes: EditorialNotes?
        public let name: String
        public let url: URL
    }

    public struct Relationships: Decodable {
        public let playlists: PlaylistRelationship?
    }

    public let attributes: Attributes?
    public let href: String?
    public let id: String
    public let relationships: Relationships?
    public let type: ResourceType
}
