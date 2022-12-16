//
//  ReactionView.swift
//  Slack
//
//  Created by Meghan Sun on 11/12/22.
//

import SwiftUI

struct ReactionView: View {
    @State var reaction: Reaction
    
    var body: some View {
        Button {
            if (!reaction.selected){
                reaction.count = reaction.count + 1
            } else {
                reaction.count = reaction.count - 1
            }
            
            reaction.selected.toggle()
            
        } label: {
            Text("\(reaction.emoji)  \(reaction.count)" )
                .font(.subheadline)
                .fontWeight(.bold)
        }
        .foregroundColor(.white)
        .padding(5)
        .padding([.leading,.trailing], 5)
        .background(reaction.selected ? Color("opaque-blue") : Color("opaque-light-gray")
            .opacity(0.6))
        .clipShape(Capsule())
    }
}

struct ReactionView_Previews: PreviewProvider {
    static var previews: some View {
        ReactionView(reaction: Reaction(emoji: "👍🏼", count: 5)).preferredColorScheme(.dark)
    }
}
