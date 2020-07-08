//
//  File.swift
//  
//
//  Created by iniad on 2020/07/05.
//

import Foundation

public struct Response<Model: Decodable>: Decodable {
    public let data: [Model]
    public let errors: [String]
    public let href: String?
    public let next: String?
}

public typealias AlbumResponse = Response<Album>

public typealias ArtistResponse = Response<Artist>

public typealias SongResponse = Response<Song>

public typealias MusicVideoResponse = Response<MusicVideo>

public typealias LibraryMusicVideoResponse = Response<LibraryMusicVideo>

public typealias CuratorResponse = Response<Curator>

public typealias AppleCuratorResponse = Response<AppleCurator>

public typealias LibraryPlaylistResponse = Response<LibraryPlaylist>

public typealias PlaylistResponse = Response<Playlist>

public typealias LibraryAlbumResponse = Response<LibraryAlbum>

public typealias LibraryArtistResponse = Response<Artist>

public typealias LibrarySongResponse = Response<Song>

public typealias StationResponse = Response<Station>

public typealias ActivityResponse = Response<Activity>

public typealias HistoryResponse = Response<History>

public typealias RecentlyAddedResponse = HistoryResponse

public typealias SearchResponse = Response<SearchResults>

public typealias LibrarySearchResponse = Response<LibrarySearchResults>

public struct SearchHintsResponse: Decodable {
    public let results: SearchHints
    public let errors: [String]
    public let href: String?
    public let next: String?
}
