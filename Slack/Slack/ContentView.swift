//
//  ContentView.swift
//  Slack
//
//  Created by Meghan Sun on 10/30/22.
//

import SwiftUI

struct ContentView: View {
    init() {
            UITextField.appearance().keyboardAppearance = .dark
        
        }
    
    var body: some View {
        
  
                TabView {
                    ChannelsFeedView()
                        .tabItem {
                            Label("Home", systemImage: "house.fill")
                        }
                    DirectMessagesHomeView()
                        .tabItem {
                            Label("DMs", systemImage: "message")
                        }
                    
                    MentionsView()
                        .tabItem{
                            Label("Mentions", systemImage: "at")
                        }
                    
                    SearchView()
                        .tabItem{
                            Label("Search", systemImage: "magnifyingglass")
                        }
                    
                    ProfileView()
                        .tabItem{
                            Label("You", systemImage: "face.smiling")
                               
                        }
        
                }
                .foregroundColor(Color("light-gray"))
        
        
            }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
