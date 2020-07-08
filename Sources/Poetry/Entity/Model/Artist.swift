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
        public let stations: StationRelationship?
        public enum CodingKeys: String, CodingKey {
            case albums
            case genres
            case musicVideos = "music-videos"
            case playlists
            case stations
        }
    }
    
    public let href: String?
    public let id: String
    public let type: ResourceType
    public let attributes: Attributes?
    public let relationships: Relationships?
}
