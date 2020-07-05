//
//  Genre.swift
//

import Foundation

public struct Genre: Resource {
    public struct Attributes: Decodable {
        public let name: String
    }
    
    public struct Relationships: Decodable {}
    
    public let type: PoetryType
    public let attributes: Attributes?
    public let href: String?
    public let id: String
    public let relationships: Relationships?
}
