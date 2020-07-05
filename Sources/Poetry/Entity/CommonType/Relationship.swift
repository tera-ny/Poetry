//
//  Relationship.swift
//

import Foundation

public struct Relationship<Model: Decodable>: Decodable {
    public let data: [Model]
    public let href: String?
    public let next: String?
}

public typealias AlbumRelationship = Relationship<Album>

public typealias ArtistRelationship = Relationship<Artist>

public typealias SongRelationship = Relationship<Song>

public typealias MusicVideoRelationship = Relationship<MusicVideo>

public typealias GenreRelationship = Relationship<Genre>

public typealias TrackRelationship = Relationship<Track>

public typealias CuratorRelationship = Relationship<Curator>

public typealias PlaylistRelationship = Relationship<Playlist>

public typealias LibraryAlbumRelationship = Relationship<LibraryAlbum>

public typealias LibraryArtistRelationship = Relationship<LibraryArtist>

public typealias LibraryTrackRelationship = Relationship<LibraryTrack>

public typealias StationRelationship = Relationship<Station>
