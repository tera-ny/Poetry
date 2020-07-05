//
//  Artist.swift
//
import Foundation

public struct Artist: Resource {
    public struct Attributes: Decodable {
        public let name: String
        public let url: URL
        public let genreNames: [String]
        public let editorialNotes: EditorialNotes?
    }
    
    public struct Relationships: Decodable {
        public let albums: AlbumRelationship?
        public let genres: GenreRelationship?
        public let musicVideos: MusicVideoRelationship?
        public let playlists: PlaylistRelationship?
        public let station: StationRelationship?
    }
    
    public let href: String?
    public let id: String
    public let type: PoetryType
    public let attributes: Attributes?
    public let relationships: Relationships?
}
