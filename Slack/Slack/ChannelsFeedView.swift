//
//  ChannelsFeedView.swift
//  Slack
//
//  Created by Meghan Sun on 11/1/22.
//

import SwiftUI

struct ChannelsFeedView: View {
    @State var search = ""
    
    @State var channels: [Channel] = [
        Channel(channel_name: "announcements", member_count: 70, pin_count: 2, messages: [
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:00 PM", message: "hey, hey"),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:01 PM", message: "how is it going??")
        ]),
        
        Channel(channel_name: "general", member_count: 70, pin_count: 2, messages: [
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:00 PM", message: "hey, hey"),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:01 PM", message: "how is it going??")
        ]),
        
        
        Channel(channel_name: "ios-academy-f22", member_count: 70, pin_count: 2, messages: [
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:00 PM", message: "hey, hey"),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:01 PM", message: "how is it going??")
        ]),
        
        Channel(channel_name: "pd", member_count: 70, pin_count: 2, messages: [
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:00 PM", message: "hey, hey"),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:01 PM", message: "how is it going??")
        ]),
        
        Channel(channel_name: "random", member_count: 70, pin_count: 2, messages: [
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:00 PM", message: "hey, hey"),
            Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:01 PM", message: "how is it going??")
        ])
        
        
        
    ]
    
    var body: some View {
        NavigationStack {
            
            ZStack{
                Color.black
                    .ignoresSafeArea()
                
                VStack{
                    HStack{
                        Image("app-team-logo")
                            .resizable()
                            .frame(width: 35, height: 35)
                            .cornerRadius(5)
                            .padding(.trailing, 5)
                        Text("App Team Carolina")
                            .fontWeight(.bold)
                            .font(.title2)
                        Spacer()
                        Image(systemName: "line.3.horizontal.decrease")
                    }
                    .padding([.trailing, .leading])
                    .foregroundColor(.white)
                    
                    Divider()
                        .overlay(.white)
                    
                    ScrollView {
                        VStack (alignment: .leading, spacing: 20){
                            TextField("Jump to...", text: $search )
                                .frame(height: 45.0)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.white, lineWidth: 0.5)
                                )
                                .padding([.top, .bottom])
                                .foregroundColor(.white)
                            
                            
                            
                            
                            
                            ChannelsFeedRowView(symbol: "ellipsis.message", name: "Threads")
                            
                            ChannelsFeedRowView(symbol: "paperplane", name: "Drafts & Sent")
                            
                            
                            Divider()
                                .overlay(.white)
                            
                            HStack{
                                Text("Channels")
                                    .fontWeight(.bold)
                                
                                Spacer()
                                
                                Image(systemName: "chevron.down")
                            }
                            
                            
                            ForEach($channels, id: \.self) { $channel in
                                NavigationLink (destination: ChannelView(channel: $channel)){
                                    ChannelsFeedRowView(symbol: "number", name: channel.channel_name)
                                }
                            }
                            
                            
                            
                            ChannelsFeedRowView(symbol: "plus", name: "Add Channel")
                            
                            Divider()
                                .overlay(.white)
                            
                            HStack{
                                Text("Direct Messages")
                                    .fontWeight(.bold)
                                
                                
                                Spacer()
                                
                                Image(systemName: "chevron.down")
                            }
                            
                            HStack{
                                Image("meghansun")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .cornerRadius(6)
                                    .padding(5)
                                
                                Text("Meghan Sun")
                                    .fontWeight(.bold)
                            }
                            
                            
                            
                            
                            
                            
                            
                            
                        }
                    }
                    Spacer()
                }
                .foregroundColor(.white)
            }
        }
    }
}

struct ChannelsFeedView_Previews: PreviewProvider {
    static var previews: some View {
        ChannelsFeedView()
    }
}

struct ChannelsFeedRowView: View {
    
    var symbol: String
    var name: String
    
    var body: some View{
        HStack{
            Image(systemName: symbol)
                .padding(.trailing, 8)
            Text(name)
        }
        .padding([.bottom, .leading], 5)
       
    }
}
