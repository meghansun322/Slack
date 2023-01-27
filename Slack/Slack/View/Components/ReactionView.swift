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
                .foregroundColor(reaction.selected ? Color("reaction-text") :
                                    Color("primary-text"))
        }
        .padding(5)
        .padding([.leading,.trailing], 5)
        .background(reaction.selected ? Color("reaction-selected") : Color("reaction-fade"))
        .clipShape(Capsule())
        
    }
}

struct ReactionView_Previews: PreviewProvider {
    static var previews: some View {
        ReactionView(reaction: Reaction(emoji: "👍🏼", count: 5)).preferredColorScheme(.dark)
    }
}
