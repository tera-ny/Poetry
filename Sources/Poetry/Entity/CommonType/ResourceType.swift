//
//  Type.swift
//  
//
//  Created by iniad on 2020/07/05.
//

import Foundation

public enum ResourceType: String, Decodable {
    case songs
    case musicVideos = "music-videos"
    case albums
    case artists
    case genres
    case stations
    case appleCurators = "apple-curators"
    case curators
    case librarySongs = "library-songs"
    case libraryArtists = "library-artists"
    case libraryAlbums = "library-albums"
    case libraryMusicVideos = "library-music-videos"
    case libraryPlaylists = "library-playlists"
    case activities
    case personalRecommendation = "personal-recommendation"
    case ratings
    case rating
}
