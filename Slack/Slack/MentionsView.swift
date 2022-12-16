//
//  MentionsView.swift
//  Slack
//
//  Created by Meghan Sun on 11/18/22.
//

import SwiftUI

struct MentionsView: View {
    var body: some View {
        VStack{
            HeaderView(title: "Mentions & Reactions")
            Spacer()
        }
    }
}

struct MentionsView_Previews: PreviewProvider {
    static var previews: some View {
        MentionsView().preferredColorScheme(.dark)
    }
}
