//
//  Request.swift
//  Lug_it
//
//  Created by Younoussa Ousmane Abdou on 6/17/17.
//  Copyright © 2017 Younoussa Ousmane Abdou. All rights reserved.
//

import Foundation

// MARK: DATA GUY
struct Request {
    
    var product: String
    var location: String
    var description : String
    var date: String
    var volume: Double
    var size: Double
    var width: Double
    var height: Double
    var length: Double
    var weight: Double
    var userID : UUID?
}
