//
//  ChannelViewModel.swift
//  Slack
//
//  Created by Meghan Sun on 11/12/22.
//

import Foundation

class ChannelViewModel: ObservableObject {
   
    var channel: Channel
    
    init(channel: Channel){
        self.channel = channel
    }
    
    var name: String {
        return channel.name
    }
    
    var messages: [Message] {
        return channel.messages
    }
    
    var member_count: Int {
        return channel.member_count
    }
    
    
    func addMessage(myMessage: String){
        channel.messages.append(Message(name: "Meghan Sun", profile_pic: "meghansun", time: getTime() , message: myMessage))
    }
    
    func getTime() -> String {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm a"
        let dateString = "\(formatter.string(from: Date()))"
        return dateString

    }
}
