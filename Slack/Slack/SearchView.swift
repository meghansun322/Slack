//
//  SearchView.swift
//  Slack
//
//  Created by Meghan Sun on 11/18/22.
//

import SwiftUI

struct SearchView: View {
    
    @State var search = ""
    @State var feedIsTyping = false
    
    var body: some View {
        VStack{

            CustomTextField(
                placeholder:
                    Text("Enter a search term").foregroundColor(.gray),
                text:  $search,
                onEditingChanged: {self.feedIsTyping = $0}
            )
            
            
            ScrollView{
                VStack(alignment: .leading){
                    ProfileRowView(symbol: "person.text.rectangle", name: "Browse People")
                    ProfileRowView(symbol: "magnifyingglass.circle", name: "Browse Channel")
                    
                    Divider()
                        .overlay(.white)
                    
                    Text("Narrow Your Search")
                        .bold()
                    
                    HStack{
                        ProfileRowView(symbol: "plus.app", name: "from:")
                        
                        Spacer()
                        
                        Text("Ex. @zoemaxwell")
                    }
                    
                    HStack{
                        ProfileRowView(symbol: "plus.app", name: "is:")
                        
                        Spacer()
                        
                        Text("Ex. saved")
                    }
                    
                    HStack{
                        ProfileRowView(symbol: "plus.app", name: "after:")
                        
                        Spacer()
                        
                        Text("Ex. 2020-12-18")
                    }
                    
                    HStack{
                        ProfileRowView(symbol: "plus.app", name: "in:")
                        
                        Spacer()
                        
                        Text("Ex. #project-unicorn")
                    }
                    
                    Spacer()
                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
            .preferredColorScheme(.dark)
    }
}
