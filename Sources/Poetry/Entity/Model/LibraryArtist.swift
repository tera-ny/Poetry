//
//  File.swift
//  
//
//  Created by iniad on 2020/07/05.
//

import Foundation

public struct LibraryArtist: Resource {
    public struct Attributes: Decodable {
        public let name: String
    }
    
    public struct Relationships: Decodable {
        public let albums: LibraryAlbumRelationship?
    }
    
    public let href: String?
    public let id: String
    public let type: PoetryType
    public let attributes: Attributes?
    public let relationships: Relationships?
}
