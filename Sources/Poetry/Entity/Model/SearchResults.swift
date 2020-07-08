//
//  File.swift
//  
//
//  Created by iniad on 2020/07/07.
//

import Foundation

public struct SearchResults: Decodable {
    public enum CodingKeys: String, CodingKey {
        case activities
        case albums
        case appleCurators = "apple-curators"
        case artist
        case curators
        case musicVideos = "music-videos"
        case playlists
        case songs
        case stations
    }
    public let activities: [ActivityResponse]
    public let albums: [AlbumResponse]
    public let appleCurators: [AppleCuratorResponse]
    public let artist: [ArtistResponse]
    public let curators: [CuratorResponse]
    public let musicVideos: [MusicVideoResponse]
    public let playlists: [PlaylistResponse]
    public let songs: [SongResponse]
    public let stations: [StationResponse]
}
