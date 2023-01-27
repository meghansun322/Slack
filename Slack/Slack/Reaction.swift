//
//  Reaction.swift
//  Slack
//
//  Created by Meghan Sun on 11/10/22.
//
import Foundation

struct Reaction: Codable, Hashable, Identifiable {
    var id = UUID()
    
    var emoji: String
    var count: Int
    var selected: Bool = false
}
