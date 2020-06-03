//
//  ViewController.swift
//  youtube-ios-mv
//
//  Created by Luis Rivera Alvarado on 31/05/20.
//  Copyright © 2020 Luis Rivera Alvarado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.getVideos()
    }

}
