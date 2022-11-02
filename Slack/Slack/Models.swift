//
//  Models.swift
//  Slack
//
//  Created by Meghan Sun on 10/30/22.
//

import Foundation


struct Message: Codable, Hashable {
    let name: String
    let profile_pic: String
    let time: String
    let message: String
}


struct Channel: Codable, Hashable {
    
    let channel_name: String
    let member_count: Int
    let pin_count: Int
    let messages: [Message]
  
}
