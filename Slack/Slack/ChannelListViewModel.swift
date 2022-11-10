//
//  ChannelListViewModel.swift
//  Slack
//
//  Created by Meghan Sun on 11/7/22.
//

import Foundation

class ChannelListViewModel: ObservableObject {
    
    @Published var channels: [Channel] = [
        Channel(name: "announcements", member_count: 70, pin_count: 2, messages: [
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:00 PM", message: "hey, hey", reactions: [Reaction(emoji: "😊", count: 4), Reaction(emoji: "🤗", count: 3)]),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:01 PM", message: "how is it going??",  reactions: []),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:02 PM", message: "hello??",  reactions: []),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:03 PM", message: "anyone here??",  reactions: []),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:03 PM", message: "interesting...",  reactions: []),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:04 PM", message: "a lonely world",  reactions: [Reaction(emoji: "😭", count: 1)]),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:05 PM", message: "ok, bye",  reactions: [])
        ]),
        
        Channel(name: "general", member_count: 70, pin_count: 2, messages: [
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:00 PM", message: "hey, hey"),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:01 PM", message: "how is it going??")
        ]),


        Channel(name: "ios-academy-f22", member_count: 70, pin_count: 2, messages: [
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:00 PM", message: "hey, hey"),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:01 PM", message: "how is it going??")
        ]),

        Channel(name: "pd", member_count: 70, pin_count: 2, messages: [
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:00 PM", message: "hey, hey"),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:01 PM", message: "how is it going??")
        ]),

        Channel(name: "random", member_count: 70, pin_count: 2, messages: [
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:00 PM", message: "hey, hey"),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:01 PM", message: "how is it going??")
        ])

    ]
}
