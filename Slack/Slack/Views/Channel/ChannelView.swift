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
            ChannelHeaderView(channel: $channel)
        }
    }
    
    @State var channel: Channel
    
    @State var myMessage: String = ""
    
    
    var body: some View {
        
        NavigationStack{
            
            ZStack{
                Color("misty-gray")
                    .ignoresSafeArea()
                
                VStack {
                    
                    VStack (alignment: .leading){
                        
                        ForEach($channel.messages, id: \.self){ $item in
                            MessageView(message: $item)
                        }
                        
                        Spacer()
                        
                        Divider()
                            .overlay(.gray)
                        
                        MessageInputView(channel: $channel, myMessage: $myMessage)
                       
                    }
                    
                    Divider()
                        .overlay(.white)
                    
                    FooterView()
                    
                }

            }
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: backButton)
            
        }
    }
    
}
    
struct ChannelHeaderView: View {
    @Binding var channel: Channel
    
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
    @Binding var channel: Channel
    @Binding var myMessage: String
    
    var currentTime: String {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm a"
        let dateString = "\(formatter.string(from: Date()))"
        return dateString

    }
    
    var body: some View {
        
        HStack {
            Image(systemName: "plus.circle")
    
            CustomTextField(
                placeholder: Text("Message #\(channel.name)")
                    .font(.headline),
                text:  $myMessage
            )
            .font(.subheadline)
            .onSubmit {
                channel.messages.append(Message(name: "Meghan Sun", profile_pic: "meghansun", time: currentTime , message: myMessage))
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
        ChannelView(channel: .example[0])
    }
}


