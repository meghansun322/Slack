//
//  DirectMessage.swift
//  Slack
//
//  Created by Meghan Sun on 12/16/22.
//

import Foundation

struct DirectMessage: Hashable {
    
    var names: [Profile]
    var messages: [Message] = []
    
    static let direct_message_example: DirectMessage =
        DirectMessage(names: [Profile(name: "Alec Nipp", image: "yellow-profile")], messages: [
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:01 PM", message: "how is it going??",  reactions: []),
            Message(name: "Alec Nipp", profile_pic: "yellow-profile", time: "10:02 PM", message: "good",  reactions: []),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:01 PM", message: "yay",  reactions: []),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:01 PM", message: "yayyyy",  reactions: []),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:01 PM", message: "happy to hear that",  reactions: []),
        ])
    
    static let direct_message_list: [DirectMessage] = [
        DirectMessage(names: [Profile(name: "Meghan Sun", image: "meghansun")], messages: [
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:01 PM", message: "how is it going??",  reactions: []),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:02 PM", message: "good",  reactions: []),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:01 PM", message: "yay",  reactions: []),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:01 PM", message: "yayyyy",  reactions: []),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:01 PM", message: "happy to hear that",  reactions: []),
        ]),
        
        DirectMessage(names: [Profile(name: "Alec Nipp", image: "yellow-profile")], messages: [
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:01 PM", message: "how is it going??",  reactions: []),
            Message(name: "Alec Nipp", profile_pic: "yellow-profile", time: "10:02 PM", message: "good",  reactions: []),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:01 PM", message: "yay",  reactions: []),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:01 PM", message: "yayyyy",  reactions: []),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:01 PM", message: "happy to hear that",  reactions: []),
        ]),
        
        DirectMessage(names: [Profile(name: "Sam Shi", image: "blue-profile")], messages: [
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:01 PM", message: "how is it going??",  reactions: []),
            Message(name: "Sam Shi", profile_pic: "yellow-profile", time: "10:02 PM", message: "good",  reactions: [])
        ]),
        
        DirectMessage(names: [Profile(name: "Alec Nipp", image: "yellow-profile")], messages: [
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:01 PM", message: "how is it going??",  reactions: []),
            Message(name: "Alec Nipp", profile_pic: "yellow-profile", time: "10:02 PM", message: "good",  reactions: [])
        ]),
        
        DirectMessage(names: [Profile(name: "Sam Shi", image: "blue-profile")], messages: [
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:01 PM", message: "how is it going??",  reactions: []),
            Message(name: "Sam Shi", profile_pic: "yellow-profile", time: "10:02 PM", message: "good",  reactions: [])
        ])
    ]
    
}
