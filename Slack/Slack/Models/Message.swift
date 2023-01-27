//
//  Message.swift
//  Slack
//
//  Created by Meghan Sun on 11/10/22.
//
import Foundation

struct Message: Codable, Hashable, Identifiable {
    var id = UUID()
    
    let name: String
    let profile_pic: String
    let time: String
    let message: String
    
    var reactions: [Reaction] = []
    
    static let messages_example: [Message] = [
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:00 PM", message: "hey, hey", reactions: [Reaction(emoji: "😊", count: 4), Reaction(emoji: "🤗", count: 3)]),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:01 PM", message: "how is it going??",  reactions: []),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:02 PM", message: "hello??",  reactions: []),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:03 PM", message: "anyone here??",  reactions: []),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:03 PM", message: "interesting...",  reactions: []),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:04 PM", message: "a lonely world",  reactions: [Reaction(emoji: "😭", count: 1)]),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:05 PM", message: "ok, bye",  reactions: [])
        ]
}
