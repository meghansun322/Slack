//
//  MessageView.swift
//  Slack
//
//  Created by Meghan Sun on 11/10/22.
//

import SwiftUI

struct MessageView: View {
    var message: Message
    
    var body: some View {
        VStack {
            HStack (alignment: .top, spacing: 10) {
                
                Image("\(message.profile_pic)")
                    .resizable()
                    .frame(width: 40, height: 40)
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
                                .padding(5)
                                .padding([.leading,.trailing], 5)
                                .background( Color("reaction-fade")
                                    .opacity(0.5))
                                .clipShape(Capsule())
                                
                            
                        }
                    }
          
                    
                }
                
            }
            .padding([.leading, .trailing, .top])

        }
    }
}

