//
//  ChannelListViewModel.swift
//  Slack
//
//  Created by Meghan Sun on 11/7/22.
//

import Foundation

class ChannelListViewModel: ObservableObject {
    
    @Published var channels: [Channel] = Channel.example
    
    @Published var directMessages: [DirectMessage] = DirectMessage.direct_message_list

    
}
