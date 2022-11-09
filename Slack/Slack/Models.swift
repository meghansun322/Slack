//
//  Models.swift
//  Slack
//
//  Created by Meghan Sun on 10/30/22.
//

import Foundation


struct Channel: Codable, Hashable {
    
    let channel_name: String
    let member_count: Int
    let pin_count: Int
    let messages: [Message]
  
}
