//
//  Model.swift
//  youtube-ios-mv
//
//  Created by Luis Rivera Alvarado on 01/06/20.
//  Copyright © 2020 Luis Rivera Alvarado. All rights reserved.
//

import Foundation

class Model {
    
    func getVideos () {
        // Create a URL object
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else {
            return
        }
        
        // Get a URLSession object
        let session = URLSession.shared
        
        // Get a data task from the URLSession object
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            // Check if there were any errors
            if error != nil || data == nil {
                return
            }
            
            // Parsing the data in to video object´s
        }
        
        // Kick off the task
        dataTask.resume()
        
    }
    
}
