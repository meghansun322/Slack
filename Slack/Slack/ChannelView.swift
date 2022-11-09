//
//  ChannelView.swift
//  Slack
//
//  Created by Meghan Sun on 10/30/22.
//

import SwiftUI

struct ChannelView: View {
    
    var channel: ChannelViewModel
   
    @State var myMessage: String = ""
    
    var body: some View {
        NavigationStack{
            
            ZStack{
                Color.black
                    .ignoresSafeArea()
                
                VStack (alignment: .leading){
                    
                    headerView(channel: channel)
                    
                    Divider()
                        .overlay(.gray)
                    
                    
                    ForEach(channel.messages, id: \.self){ item in
                        messageView(message: item)
                    }
                    
                    
                    
                    Spacer()
                    
                    Divider()
                        .overlay(.gray)
                    
                    HStack {
                        Image(systemName: "plus.circle")
                        
                        
                       
                            
                           
                        SuperTextField(
                            placeholder: Text("Message #\(channel.name)").foregroundColor(.white),
                            text:  $myMessage
                        )
                        .font(.subheadline)
                        .onSubmit {
                            channel.addMessage(message: myMessage)
                            myMessage = ""
                            print(channel.messages)
                        }
                            
                        
                        
                    
                        
                        
                        Spacer()
                        Image(systemName: "mic")
                    }
                    .padding()
                    .foregroundColor(.white)
                    
                    
                    Divider()
                        .overlay(.gray)
                        .padding(.bottom, 20)
                    
                    footerIconView()
                    
                    
                }
            }
            
        }
    }

struct messageView: View {
    var message: Message
    
   
    var body: some View {
        VStack{
            HStack (alignment: .top) {
                
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
                    
                    
                        HStack{
                            ForEach(message.reactions) { reaction in
                                Button {
                                 
                                } label: {
                                    Text("\(reaction.emoji)  \(reaction.count)" )
                                        .font(.subheadline)
                                        .fontWeight(.bold)
                                }
                               
                            }
                            .foregroundColor(.white)
                            .padding(5)
                            .padding([.leading,.trailing], 5)
                            .background( Color(UIColor.lightGray)
                                .opacity(0.6))
                            .clipShape(Capsule())
                            
                            Image(systemName: "face.smiling")
                                .foregroundColor(.white)
                                .padding(5)
                                .padding([.leading,.trailing], 5)
                                .background(Color(UIColor.lightGray)
                                    .opacity(0.5))
                                .clipShape(Capsule())
                        
                            }
                    
                }
                .foregroundColor(.white)
            }
            .foregroundColor(.gray)
            
           
        }
    }
}

struct headerView: View {
    var channel: ChannelViewModel
    
    var body: some View {
        HStack (spacing: 10){
           
            Image(systemName: "chevron.left")
                .foregroundColor(.white)
            
            VStack{
                Text("# \(channel.name)")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text("\(channel.member_count) members, \(channel.pin_count) pins")
                    .foregroundColor(.gray)
                    .font(.footnote)
                
            }
            
            Spacer()
            Image(systemName: "headphones")
                .foregroundColor(.white)
        }
        
    }
}
    
 

struct footerIconView: View {
    
    var body: some View{
        HStack (spacing: 25) {
           Spacer()
            
            Group {
        
                VStack {
                    Image(systemName: "house.fill")
                        .padding(.bottom, 1)
                    Text("Home")
                        .font(.subheadline)
                }
                
                
                VStack{
                    Image(systemName: "message")
                        .padding(.bottom, 1)
                    Text("DMs")
                        .font(.subheadline)
                }
                
                
                VStack{
                    Image(systemName: "at")
                        .padding(.bottom, 1)
                    Text("Mentions")
                        .font(.subheadline)
                }
                
                
                VStack{
                    Image(systemName: "magnifyingglass")
                        .padding(.bottom, 1)
                    Text("Search")
                        .font(.subheadline)
                }
                
                
                VStack{
                    Image(systemName: "face.smiling")
                        .padding(.bottom, 1)
                    Text("You")
                        .font(.subheadline)
                }
                
            }
            Spacer()
            
        }
        .foregroundColor(.gray)
        
    }
    }
}

struct SuperTextField: View {
    
    var placeholder: Text
    @Binding var text: String
    var editingChanged: (Bool)->() = { _ in }
    var commit: ()->() = { }
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty { placeholder }
            TextField("", text: $text, onEditingChanged: editingChanged, onCommit: commit)
        }
    }
    
}

struct ChannelView_Previews: PreviewProvider {
    
    static var previews: some View {
        ChannelView(channel: ChannelViewModel(channel: .example))
    }
}
