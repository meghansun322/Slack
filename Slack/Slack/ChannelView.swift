//
//  ChannelView.swift
//  Slack
//
//  Created by Meghan Sun on 10/30/22.
//

import SwiftUI

struct ChannelView: View {
    
    @State var channel_name = "annoucements"
    @State var member_count = 62
    @State var pin_count = 13
    @State var messages: [Message] = [
        Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:00 PM", message: "hey, hey"),
        Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:01 PM", message: "how is it going??")
    ]
    private var myMessage = Message(name: "Meghan Sun", profile_pic: "meghansun", time: "10:00 PM", message: "hey, hey")
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color.black
                    .ignoresSafeArea()
                VStack (alignment: .leading){
                    HStack (spacing: 10){
                        Image(systemName: "chevron.left")
                            .foregroundColor(.white)
                        
                        VStack{
                            Text("# \(channel_name)")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            
                            Text("\(member_count) members, \(pin_count) pins")
                                .foregroundColor(.gray)
                                .font(.footnote)
                            
                        }
                        
                        Spacer()
                        Image(systemName: "headphones")
                            .foregroundColor(.white)
                    }
                    
                    Divider()
                        .overlay(.gray)
                    
                    ForEach(messages, id: \.self){ item in
                        messageView(message: item)
                        
                    }
                    
                    Spacer()
                    
                    Divider()
                        .overlay(.gray)
            
                    HStack{
                        Image(systemName: "plus.circle")

                        Text("Message #\(channel_name)")
                            .font(.title3)
                        
                        
                        Spacer()
                        Image(systemName: "mic")
                    }
                        .padding()
                        .foregroundColor(.gray)
                    
                    
                    Divider()
                        .overlay(.gray)
                        .padding(.bottom, 20)
                    
                    HStack (spacing: 30) {
                        
                        Group {
                    
                            VStack{
                                Image(systemName: "house.fill")
                                    .padding(.bottom, 1)
                                Text("Home")
                            }
                            
                            
                            VStack{
                                Image(systemName: "message")
                                    .padding(.bottom, 1)
                                Text("DMs")
                            }
                            
                            
                            VStack{
                                Image(systemName: "at")
                                    .padding(.bottom, 1)
                                Text("Mentions")
                            }
                            
                            
                            VStack{
                                Image(systemName: "magnifyingglass")
                                    .padding(.bottom, 1)
                                Text("Search")
                            }
                            
                            
                            VStack{
                                Image(systemName: "face.smiling")
                                    .padding(.bottom, 1)
                                Text("You")
                            }
                            
                        }
                        
                        
                        
                    }
                    .foregroundColor(.gray)
                    
                }
            }
        }    }
}

struct messageView: View {
    let message: Message
    
    var body: some View {
        HStack {
            Image("\(message.profile_pic)")
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(6)
                .padding(5)
            VStack (alignment: .leading){
                HStack {
                    Text("\(message.name)")
                        .fontWeight(.bold)
                    Text("\(message.time)")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
                Text("\(message.message)")
                   
            }
            .foregroundColor(.white)
        }
        .foregroundColor(.gray)
    }
}

struct ChannelView_Previews: PreviewProvider {
    static var previews: some View {
        ChannelView()
    }
}
