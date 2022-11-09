//
//  Message.swift
//  Slack
//
//  Created by Meghan Sun on 11/4/22.
//

import Foundation

struct Message: Codable, Hashable, Identifiable {
    var id = UUID()
    
    let name: String
    let profile_pic: String
    let time: String
    let message: String
    
    var reactions: [Reaction] = []
}


struct Reaction: Codable, Hashable, Identifiable {
    var id = UUID()
    
    var emoji: String
    var count: Int
    var selected: Bool = false
}
