//
//  ChannelViewModel.swift
//  Slack
//
//  Created by Meghan Sun on 11/18/22.
//

import Foundation

class ChannelViewModel: ObservableObject {
    
    @Published var model: Channel
    
    init(channel: Channel){
        self.model = channel
    }
    
    var name: String {
        return model.name
    }
    
    var member_count: Int {
        return model.member_count
    }
    
    var pin_count: Int {
        return model.pin_count
    }
    
    var messages: [Message] {
        return model.messages
    }
    
    func addMessage(new: String) {
        model.messages.append(Message(name: "Meghan Sun", profile_pic: "meghansun", time: currentTime(), message: new))
    }
    
    func currentTime() -> String {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm a"
        let dateString = "\(formatter.string(from: Date()))"
        return dateString

    }
}
