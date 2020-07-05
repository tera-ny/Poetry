//
//  Station.swift
//

import Foundation

public struct Station: Resource {
    public struct Attributes: Decodable {
        public let artwork: Artwork
        public let durationInMillis: Double?
        public let editorialNotes: EditorialNotes?
        public let episodeNumber: Int?
        public let isLive: Bool
        public let name: String
        public let url: URL
    }
    
    public struct Relationships: Decodable {}
    
    public let type: PoetryType
    public let attributes: Attributes?
    public let href: String?
    public let id: String
    public let relationships: Relationships?
}
