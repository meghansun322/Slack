//
//  ChannelsFeedView.swift
//  Slack
//
//  Created by Meghan Sun on 11/1/22.
//

import SwiftUI

struct ChannelsFeedView: View {
    @State var search = ""
    
    @StateObject var vm = ChannelListViewModel()
    
    let directMessageProfiles = [Profile(name: "Meghan Sun (you)", image: "meghansun"), Profile(name: "Alec Nipp", image: "yellow-profile"), Profile(name: "Kush S", image: "blue-profile"), Profile(name: "David Williams",  image: "yellow-profile")]
    
    
    var body: some View {
        
        NavigationStack {
            
            ZStack{
                Color.black
                    .ignoresSafeArea()
                
                VStack{
                    
                    FeedsHeaderView()
                    
                    Divider()
                        .overlay(.white)
                    
                    
                    ScrollView {
                        VStack (alignment: .leading, spacing: 20){
                            
                            TopFeedView(search: $search)
                                .padding([.leading, .trailing], 5)
                            
                            Divider()
                                .overlay(.white)
                            
                            FeedHeadingView(title: "Channels")

                            
                            ForEach($vm.channels, id: \.self) { $channel in
                                NavigationLink {
                                    ChannelView(channel: ChannelViewModel(channel: channel))
                                } label: {
                                    ChannelsFeedRowView(symbol: "number", name: channel.name)
                                }
                            }
                            
                            
                            Button {
                                print("clicked")
                            } label: {
                               ChannelsFeedRowView(symbol: "plus", name: "Add Channel")
                            }
                            
                            
                            Divider()
                                .overlay(.white)
                            
                            FeedHeadingView(title: "Direct Messages")
                           
                          
                            ForEach(directMessageProfiles, id: \.self) { profile in
                                DirectMessageView(profile: profile)
                                
                            }
                            
                        }
                    }
                    Spacer()
                }
                .foregroundColor(.white)
               
            }
            
        }
    }
}

struct ChannelsFeedView_Previews: PreviewProvider {
    static var previews: some View {
        ChannelsFeedView()
    }
}

struct FeedsHeaderView: View {
    var body: some View{
        HStack{
            Image("app-team-logo")
                .resizable()
                .frame(width: 35, height: 35)
                .cornerRadius(5)
                .padding(.trailing, 5)
            Text("App Team Carolina")
                .fontWeight(.bold)
                .font(.title2)
            Spacer()
            Image(systemName: "line.3.horizontal.decrease")
        }
        .padding([.trailing, .leading])
        .foregroundColor(.white)
    }
}

struct TopFeedView: View {
    @Binding var search: String
    
    var body: some View {
        
        SuperTextField(
            placeholder: Text("Jump to...").foregroundColor(.white),
            text:  $search
        )
            .padding(12)
        
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.white, lineWidth: 0.5)
            )
            .padding(.top, 5)
            .foregroundColor(Color.white)
        
        ChannelsFeedRowView(symbol: "ellipsis.message", name: "Threads")
        
        ChannelsFeedRowView(symbol: "paperplane", name: "Drafts & Sent")
    }
}

struct FeedHeadingView: View {
    var title: String
    
    var body: some View {
        HStack{
            Text(title)
                .fontWeight(.bold)
            
            Spacer()
            
            Image(systemName: "chevron.down")
        }
        
    }
}

struct Profile: Hashable {
    var name: String
    var image: String
}


struct ChannelsFeedRowView: View {
    
    var symbol: String
    var name: String
    
    var body: some View{
        HStack{
            Image(systemName: symbol)
                .padding(.trailing, 8)
            Text(name)
        }
        .padding([.bottom, .leading], 5)
       
    }
}


struct DirectMessageView: View {
    var profile: Profile
    
    var body: some View {
        HStack {
            Image(profile.image)
                .resizable()
                .frame(width: 30, height: 30)
                .cornerRadius(6)
                .padding(.trailing, 8)
              
            
            Text(profile.name)
                
        }
        .padding([.leading], 5)
        
    }
}

