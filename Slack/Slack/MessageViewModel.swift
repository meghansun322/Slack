//
//  MessageViewModel.swift
//  Slack
//
//  Created by Meghan Sun on 11/12/22.
//

import Foundation

class MessageViewModel: ObservableObject {
    
    var message: Message
    
    init(message: Message){
        self.message = message
    }
    

}
