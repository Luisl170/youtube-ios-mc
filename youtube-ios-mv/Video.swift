//
//  Video.swift
//  youtube-ios-mv
//
//  Created by Luis Rivera Alvarado on 01/06/20.
//  Copyright © 2020 Luis Rivera Alvarado. All rights reserved.
//

import Foundation

struct Video: Decodable {
    
    var videoId = ""
    
    var title = ""
    
    var description = ""
    
    var thumbnail = ""
    
    var published = Date()
    
    enum CodingKeys: String, CodingKey {
        case snippet
        case resourceId
        case videoId
        case title
        case description
        case thumbnails
        case high
        case thumbnail = "url"
        case published = "publishedAt"
    }
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        let snippetContainer = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .snippet)
        
        let thumbnailConatiner = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .thumbnails )
        
        let highContainer = try thumbnailConatiner.nestedContainer(keyedBy: CodingKeys.self, forKey: .high)
        
        let resourceIdContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .resourceId)
        
        // Parse title
        self.title = try snippetContainer.decode(String.self, forKey: .title)
        
        // Parse description
        self.description = try snippetContainer.decode(String.self, forKey: .description)
        
        // Parse the publish date
        self.published = try snippetContainer.decode(Date.self, forKey: .published)
        
        // Parse thumbnail
        self.thumbnail = try highContainer.decode(String.self, forKey: .thumbnail)
        
        // Parse video ID
        self.videoId = try resourceIdContainer.decode(String.self, forKey: .videoId)
        
    }
    
}
