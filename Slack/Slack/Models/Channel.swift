//
//  Channel.swift
//  Slack
//
//  Created by Meghan Sun on 11/10/22.
//

import Foundation

struct Channel: Codable, Hashable {
    
    var name: String
    var member_count: Int
    var pin_count: Int
    var messages: [Message] = []
    
    
    static let channel_example: Channel =
        Channel(name: "announcements", member_count: 70, pin_count: 2, messages: [
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:01 PM", message: "how is it going??",  reactions: []),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:02 PM", message: "hello??",  reactions: []),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:03 PM", message: "anyone here??",  reactions: []),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:03 PM", message: "interesting...",  reactions: []),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:04 PM", message: "a lonely world",  reactions: [Reaction(emoji: "😭", count: 1)]),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:05 PM", message: "ok, bye",  reactions: [])
        ])
    
    static let example: [Channel] = [
        Channel(name: "announcements", member_count: 70, pin_count: 2, messages: [
            Message(name: "Kush", profile_pic: "yellow-profile", time: "8: 53 AM", message: "Hi all, recruitment will be starting shortly! If you know someone who would be a good fit for App Team, let us know using this referral form. Keep in mind that a referral does not guarantee an interview, and the more referrals you submit, the less weight each one has.",  reactions: [Reaction(emoji: "👍🏼", count: 4)]),
            
            Message(name: "Bailey Van Wormer", profile_pic: "blue-profile", time: "9: 17 AM", message: "Reminder that our Gala is tomorrow from 4:30-7:30 PM at The Pitch on Franklin Street. Looking forward to seeing everyone there. Please remember to fill out this form if you are bringing guests (https://forms.gle/VbWcNKjLzLT8BGTX8). As always, please let me know if you will not be able to make it, the Gala is a big end of year event so we expect everyone to be there! See y’all tomorrow.",  reactions: [Reaction(emoji: "❤️", count: 4)])
            
        ]),
        
        Channel(name: "general", member_count: 70, pin_count: 2, messages: [
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:00 PM", message: "Hey everyone :) Hope you are having a 10/10 day!",  reactions: [Reaction(emoji: "🤗", count: 3)]),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:01 PM", message: "how is it going??",  reactions: []),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:02 PM", message: "hello??",  reactions: []),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:03 PM", message: "anyone here??",  reactions: []),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:03 PM", message: "interesting...",  reactions: []),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:04 PM", message: "a lonely world",  reactions: [Reaction(emoji: "😭", count: 1)]),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:05 PM", message: "ok, bye",  reactions: [])
        ]),


        Channel(name: "ios-academy-f22", member_count: 28, pin_count: 2, messages: [
            Message(name: "Alec Nipp", profile_pic: "yellow-profile", time: "4:01 PM", message: "IMPORTANT ANNOUNCEMENT 📣❗️ We will not be hosting iOS Academy in our usual spot today. There’s a speaker event going on, so we’re moving to SN115 for today. See y’all at 5:30 🔥"),
            Message(name: "Alec Nipp", profile_pic: "yellow-profile", time: "6:44 PM", message: "Great work today, everyone! I realize the demo today was kinda confusing, so here’s the link to an example solution (my own personal GitHub repo). Clone the source code and take a look if you’d like, or you can keep trying to work it out yourself. Remember to work on your final projects and get them done before Sunday. Unless you tell me otherwise, I’m assuming you all will present your projects in person at the Gala. See y’all Sunday 🕺.", reactions: [Reaction(emoji: "🕺", count: 2)]),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:00 PM", message: "yay!"),
        ]),

        Channel(name: "pd", member_count: 70, pin_count: 2, messages: [
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "8:00 PM", message: "hey, hey"),
        ]),

        Channel(name: "random", member_count: 70, pin_count: 2, messages: [
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "8:01 PM", message: "What is everyone's favorite fruit?"),
            
            Message(name: "Viyda Ramesh", profile_pic: "blue-profile", time: "9:01 PM", message: "Mine is the watermelon"),
            Message(name: "Lauren Feldman", profile_pic: "yellow-profile", time: "9:11 PM", message: "Watermelon?? No, team Apple"),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:01 PM", message: "Unpopular opinion, but mine are bananas", reactions: [Reaction(emoji: "🤮", count: 15), Reaction(emoji: "👎", count: 12)]),
            Message(name: "Viyda Ramesh", profile_pic: "blue-profile", time: "10:11 PM", message: "WHAT?!"),
            Message(name: "Lauren Feldman", profile_pic: "yellow-profile", time: "10:11 PM", message: "NO..."),
            
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:01 PM", message: "As a peanut butter lover, nothing beats the peanut butter & banana combo", reactions: [Reaction(emoji: "🤩", count: 1)])
        ])

    ]
}
    
    




  

