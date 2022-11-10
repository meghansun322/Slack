//
//  HeaderView.swift
//  Slack
//
//  Created by Meghan Sun on 11/10/22.
//

import SwiftUI

struct HeaderView: View {
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
        .padding([.trailing, .leading, .bottom])
        .foregroundColor(.white)
        .background(Color.black)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            HeaderView()
            Spacer()
        }
       
        
    }
}
