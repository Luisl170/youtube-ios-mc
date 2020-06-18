//
//  Response.swift
//  youtube-ios-mv
//
//  Created by Luis Rivera Alvarado on 11/06/20.
//  Copyright © 2020 Luis Rivera Alvarado. All rights reserved.
//

import Foundation

struct Response: Decodable  {
    
    var items: [Video]?
    
    enum CodingKeys: String, CodingKey {
        case items
    }
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        // Parse items
        self.items = try container.decode([Video].self, forKey: .items)
        
    }
    
}
