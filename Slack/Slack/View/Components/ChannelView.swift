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
            ChannelHeaderView(channel: channel.model)
        }
    }
    
    @StateObject var channel: ChannelViewModel
    
    @State var myMessage: String = ""
    @State var isTyping: Bool = false
    
    
    var body: some View {
        
        NavigationStack {
            
            ZStack{
             
               
                VStack {
                    
                    VStack (alignment: .leading){
                        
                        ForEach(channel.messages, id: \.self){ item in
                            MessageView(message: item)
                        }
                        
                        Spacer()
                        
                        Divider()
                            .overlay(Color("primary-text"))
                        
                        MessageInputView(channel: channel, myMessage: $myMessage,
                        isTyping: $isTyping)
                       
                    }

                    
                }

            }
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: backButton)
            
        }
    }
    
}
    
struct ChannelHeaderView: View {
    var channel: Channel
    
    var body: some View {
        HStack (spacing: 10){
            
            Image(systemName: "chevron.left")
             
            
            VStack (alignment: .leading){
                Text("# \(channel.name)")
                    .fontWeight(.bold)
                 

                Text("\(channel.member_count) members")
                    .font(.footnote)
            }

        }
        .padding([.top,.bottom])
        
        
    }
}


struct MessageInputView: View {
    var channel: ChannelViewModel
    @Binding var myMessage: String
    @Binding var isTyping: Bool
    
    var body: some View {
        
        HStack {
            Image(systemName: "plus.circle")
    
            CustomTextField(
                placeholder: Text("Message #\(channel.name)")
                    .font(.headline),
                text:  $myMessage,
                onEditingChanged: {self.isTyping = $0}
            )
            .font(.subheadline)
            .onSubmit {
                channel.addMessage(new: myMessage);
                myMessage = ""
                print(channel.messages)
            }
      
            
            Spacer()
            Image(systemName: "mic")
        }
        .padding()
        .foregroundColor(Color("primary-text"))
        
    }
}

struct ChannelView_Previews: PreviewProvider {
    
    static var previews: some View {
        ChannelView(channel: ChannelViewModel(channel: .example[0])).preferredColorScheme(.dark)
    }
}


