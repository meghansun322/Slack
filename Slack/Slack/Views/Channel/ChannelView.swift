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
        
        NavigationStack{
            
            ZStack{
                Color("misty-gray")
                    .ignoresSafeArea()
                
                VStack {
                    
                    VStack (alignment: .leading){
                        
                        ForEach(channel.messages, id: \.self){ item in
                            MessageView(message: item)
                        }
                        
                        Spacer()
                        
                        Divider()
                            .overlay(.gray)
                        
                        MessageInputView(channel: channel, myMessage: $myMessage,
                        isTyping: $isTyping)
                       
                    }
                    
                    Divider()
                        .overlay(.white)
                 
                   
                    
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
        .foregroundColor(Color("light-gray"))
        
    }
}

struct ChannelView_Previews: PreviewProvider {
    
    static var previews: some View {
        ChannelView(channel: ChannelViewModel(channel: .example[0]))
    }
}


