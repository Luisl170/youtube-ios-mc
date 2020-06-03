//
//  Constants.swift
//  youtube-ios-mv
//
//  Created by Luis Rivera Alvarado on 01/06/20.
//  Copyright © 2020 Luis Rivera Alvarado. All rights reserved.
//

import Foundation

struct Constants {
    
    static var API_KEY = ""
    static var PLAYLIST_ID = "UUqnFo90nZIcOxbfMekqnKiQ"
    static var API_URL = "https://www.googleapis.com/youtube/v3/playlists?part=snippet&id=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
    
}
