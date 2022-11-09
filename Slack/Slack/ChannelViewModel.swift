//
//  ChannelViewModel.swift
//  Slack
//
//  Created by Meghan Sun on 11/4/22.
//

import Foundation

class ChannelViewModel: Identifiable, ObservableObject {
    private var channel: Channel
    
    init(channel: Channel) {
        self.channel = channel
    }
    
    var name: String {
        channel.name
    }
    
    var member_count: Int {
        channel.member_count
    }
    
    var pin_count: Int {
        channel.pin_count
    }
    
    var messages: [Message] {
        channel.messages
    }
    
    func addMessage(message: String){
    
        let newMessage: Message =   Message(name: "Meghan Sun", profile_pic: "meghansun", time: getTime() , message: message)
        channel.messages.append(newMessage)
    }
    
    func getTime() -> String {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm a"
        let dateString = "\(formatter.string(from: Date()))"
        return dateString

    }
    
//    func react(message: Message, reaction_index: Int) -> Bool {
//        message.reactions[reaction_index].count += 1;
//        return true
//    }
//    
//    func unreact(message: Message, reaction_index: Int) -> Bool {
//        message.reactions[reaction_index].count = 1;
//        return false;
//    }

    
  
    
}
