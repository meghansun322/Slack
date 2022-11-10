//
//  FooterView.swift
//  Slack
//
//  Created by Meghan Sun on 11/10/22.
//

import SwiftUI

struct FooterView: View {
    
    var body: some View{
        HStack (spacing: 35) {
            Group {
        
                VStack {
                    Image(systemName: "house.fill")
                        .padding(.bottom, 1)
                    Text("Home")
                        .font(.subheadline)
                }
                .foregroundColor(.white)
                
                
                VStack{
                    Image(systemName: "message")
                        .padding(.bottom, 1)
                    Text("DMs")
                        .font(.subheadline)
                }
                
                
                VStack{
                    Image(systemName: "at")
                        .padding(.bottom, 1)
                    Text("Mentions")
                        .font(.subheadline)
                }
                
                
                VStack{
                    Image(systemName: "magnifyingglass")
                        .padding(.bottom, 1)
                    Text("Search")
                        .font(.subheadline)
                }
                
                
                VStack{
                    Image(systemName: "face.smiling")
                        .padding(.bottom, 1)
                    Text("You")
                        .font(.subheadline)
                }
                
            }
          
            
        }
        .foregroundColor(.gray)
        .padding(.top, 5)
    }
}


struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                FooterView()
            }
        }
    }
}
