//
//  DirectMessageViewModel.swift
//  Slack
//
//  Created by Meghan Sun on 12/16/22.
//

import Foundation

class DirectMessageViewModel: ObservableObject {
    
    @Published var model: DirectMessage
    
    init(directMessage: DirectMessage){
        self.model = directMessage
    }
    
    var names: [Profile] {
        return model.names
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
