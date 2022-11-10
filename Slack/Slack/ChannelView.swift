//
//  ChannelView.swift
//  Slack
//
//  Created by Meghan Sun on 10/30/22.
//

import SwiftUI

struct ChannelView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var backButton : some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            headerView(channel: channel)
             
            
        }
    }
    
    var channel: ChannelViewModel
    
    @State var myMessage: String = ""
    
    var body: some View {
        
        NavigationStack{
            
            ZStack{
                Color("misty-gray")
                    .ignoresSafeArea()
               
                VStack {
                    
                    VStack (alignment: .leading){
                        
                        ForEach(channel.messages, id: \.self){ item in
                            messageView(message: item)
                        }
                       
                        Spacer()
                        
                        Divider()
                            .overlay(.gray)
                   
                        MessageInputView(channel: channel, myMessage: $myMessage)
                        
                        Divider()
                            .overlay(.gray)
                            .padding(.bottom, 20)
  
                    }
                    
                    footerIconView()
  
                }
                
            
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: backButton)
            
        }
    }
    
    struct messageView: View {
        var message: Message
        
        
        var body: some View {
            VStack {
                HStack (alignment: .top, spacing: 10) {
                    
                    Image("\(message.profile_pic)")
                        .resizable()
                        .frame(width: 45, height: 45)
                        .cornerRadius(6)
                    
                    
                    
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
                            .background( Color("opaque-light-gray")
                                .opacity(0.6))
                            .clipShape(Capsule())
                            if (!message.reactions.isEmpty){
                                Image(systemName: "face.smiling")
                                    .foregroundColor(.white)
                                    .padding(5)
                                    .padding([.leading,.trailing], 5)
                                    .background( Color("opaque-light-gray")
                                        .opacity(0.5))
                                    .clipShape(Capsule())
                                
                            }
                        }
                        
                        
                    }
                    .foregroundColor(.white)
                }
                .foregroundColor(.gray)
                .padding([.leading, .trailing, .top])
                
                
                
            }
        }
    }
    
    struct headerView: View {
        var channel: ChannelViewModel
        
        var body: some View {
            HStack (spacing: 10){
                
                Image(systemName: "chevron.left")
                    .foregroundColor(.white)
                
                VStack (alignment: .leading){
                    Text("# \(channel.name)")
                        .fontWeight(.bold)
                        .foregroundColor(.white)

                    Text("\(channel.member_count) members")
                        .foregroundColor(Color("light-gray"))
                        .font(.footnote)

                }

            }
            .padding([.top,.bottom])
            
        }
    }
    
    
    struct footerIconView: View {
        
        var body: some View{
            HStack (spacing: 35) {
                
                
                Group {
                    
                    VStack {
                        Image(systemName: "house.fill")
                            .padding(.bottom, 1)
                        Text("Home")
                            .font(.subheadline)
                    }
                    .foregroundColor(.white)
                    
                    
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

struct MessageInputView: View {
    var channel: ChannelViewModel
    @Binding var myMessage: String
    
    var body: some View {
        
        HStack {
            Image(systemName: "plus.circle")
    
            SuperTextField(
                placeholder: Text("Message #\(channel.name)")
                    .font(.headline),
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
        .foregroundColor(Color("light-gray"))
        
    }
}

struct ChannelView_Previews: PreviewProvider {
    
    static var previews: some View {
        ChannelView(channel: ChannelViewModel(channel: .example))
    }
}
