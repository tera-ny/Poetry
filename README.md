# Poetry

Provides an interface to the AppleMusic API

## Installation
dependencies: 
```package.swift
.package(url: "https://github.com/g4zeru/Poetry.git", from: "0.0.1")
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
- [ ] Search
- [ ] Rating
- [ ] Chart
- [x] Music Genre
- [x] Curator
- [ ] Recommendation
- [ ] Activity
- [ ] History

## Roadmap
- [ ] Support for all models
- [ ] Repository layer support using AppleMusicJwtManage
- [ ] Support SwiftUI
