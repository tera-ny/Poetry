//
//  File.swift
//  
//
//  Created by iniad on 2020/07/07.
//

import Foundation

public struct LibrarySearchResults: Decodable {
    public enum CodingKeys: String, CodingKey {
        case libraryAlbums = "library-albums"
        case libraryArtists = "library-artists"
        case libraryMusicVideos = "library-music-videos"
        case libraryPlaylists = "library-play-lists"
        case librarySongs = "library-songs"
    }
    public let libraryAlbums: [LibraryAlbum]
    public let libraryArtists: [LibraryArtist]
    public let libraryMusicVideos: [LibraryMusicVideo]
    public let libraryPlaylists: [LibraryPlaylistResponse]
    public let librarySongs: [LibrarySong]
}
