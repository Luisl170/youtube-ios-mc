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
            
            do {
                // Parsing the data in to video object´s
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                
                let response = try decoder.decode(Response.self, from: data!)
                
                dump(response)
            } catch {
                print(error)
            }
            
            
        }
        
        // Kick off the task
        dataTask.resume()
        
    }
    
}
