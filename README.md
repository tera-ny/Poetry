# Poetry

Provides an interface to the AppleMusic API

## Installation
dependencies: 
```package.swift
.package(url: "https://github.com/g4zeru/Poetry.git", from: "0.0.2")
```
targets:
```package.swift
.target(
    name: "YourProject",
    dependencies: ["Poetry"]),
```
## Supported Models
- [x] Album
- [x] Artist
- [x] Song
- [x] Music Video
- [x] Playlist
- [x] Apple Music Station
- [x] Search
- [ ] Rating
- [ ] Chart
- [x] Music Genre
- [x] Curator
- [x] Recommendation
- [x] Activity
- [x] History

## Roadmap
- [ ] Support for all models
- [ ] Repository layer support using AppleMusicJwtManage
- [ ] Support SwiftUI
