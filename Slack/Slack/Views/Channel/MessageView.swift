//
//  MessageView.swift
//  Slack
//
//  Created by Meghan Sun on 11/10/22.
//

import SwiftUI

struct MessageView: View {
    @Binding var message: Message
    
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
                            ReactionView(reaction: reaction)
                            
                        }
                       
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

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            
            VStack{
                ForEach(.constant(Message.messages_example)){ message in
                    MessageView(message: message)
                }
            }
             
        }
        
    }
}
