//
//  DirectMessagesHomeView.swift
//  Slack
//
//  Created by Meghan Sun on 11/18/22.
//

import SwiftUI

struct DirectMessagesHomeView: View {
    @State var search = ""
    @State var feedIsTyping = false
    
    var body: some View {
        
       
        VStack{
            HeaderView(title: "Direct Messages")
            JumpToView(search: $search, feedIsTyping: $feedIsTyping)
            
            ScrollView {
                
                
                VStack (alignment: .leading, spacing: 20){
                    
                    ForEach(Profile.profiles_example, id: \.self) { profile in
                        DMView(profile: profile)
                        
                    }
                    Spacer()
                }
            }
        }
    }
}

struct DMView: View {
    var profile: Profile

    
    var body: some View {
        HStack {
            Image(profile.image)
                .resizable()
                .frame(width: 45, height: 45)
                .cornerRadius(6)
                .padding(.trailing, 8)
              
            HStack{
                VStack (alignment: .leading){
                                Text(profile.name)
                                    .foregroundColor(.white)
                                Text("Hello")
                                    .font(.footnote)
                                    
                            }
                Spacer()
                Text("Nov 30th")
                    .font(.footnote)
            }
            
       
                
        }
        .padding([.leading], 5)
        .padding([.leading, .trailing], 10)
        
    }
}

struct DirectMessagesHomeView_Previews: PreviewProvider {
    static var previews: some View {
        DirectMessagesHomeView().preferredColorScheme(.dark)
    }
}
