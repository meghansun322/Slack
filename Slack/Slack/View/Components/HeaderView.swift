//
//  HeaderView.swift
//  Slack
//
//  Created by Meghan Sun on 11/10/22.
//

import SwiftUI

struct HeaderView: View {
    var title: String
    
    var body: some View{
        HStack{
            
            Text("\(title)")
                .fontWeight(.bold)
                .font(.title2)
            Spacer()
        }
        .padding([.trailing, .leading, .bottom])
        .foregroundColor(.white)
        .background(Color("accent-header"))
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            HeaderView(title: "Direct Messages").preferredColorScheme(.dark)
            Spacer()
        }
       
        
    }
}
