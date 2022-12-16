//
//  ProfileView.swift
//  Slack
//
//  Created by Meghan Sun on 11/18/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        
        VStack{
            HeaderView(title: "You")
            
            ScrollView{
                VStack(alignment: .leading){
                    
                    
                    ProfileDetailView()
                        .padding(.bottom, 5)
                    
                    
                    HStack{
                        
                        Image(systemName: "face.smiling")
                            .foregroundColor(.gray)
                        
                        Text("What's your status?")
                        Spacer()
                    }
                    .padding(20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.white, lineWidth: 0.25)
                    )
                    
                    .foregroundColor(Color.white)
                    
                    NotificationView()
                    
                    Divider()
                        .overlay(.white)
                    
                    ProfileRowView(symbol: "bookmark", name: "Saved Item")
                    ProfileRowView(symbol: "person", name: "View Profile")
                    ProfileRowView(symbol: "iphone.homebutton.badge.play", name: "Notifications")
                    ProfileRowView(symbol: "gear", name: "Preferences")
                    
                    Spacer()
                }
                
                
            }
        }
    }
}

struct NotificationView: View {
    
    var body: some View{
        ProfileRowView(symbol: "bell.slash", name: "Pause notifications")
        ProfileRowView(symbol: "person.badge.clock", name: "Set yourself as away")
    }
}
struct ProfileRowView: View {
    
    var symbol: String
    var name: String
    
    var body: some View{
        HStack{
            Image(systemName: symbol)
                .padding(.trailing, 8)
            Text(name)
                .bold()
        }
        .padding(10)
       
       
    }
}


struct ProfileDetailView: View{
    
    var body: some View {
        HStack{
            Image("meghansun")
                .resizable()
                .frame(width: 60, height: 60)
                .cornerRadius(6)
            
            VStack(alignment: .leading){
                Text("Meghan Sun")
                    .bold()
                    .font(.title2)
                Text("Active")
            }
            .padding(10)
            
            Spacer()
              
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView().preferredColorScheme(.dark)
    }
}
