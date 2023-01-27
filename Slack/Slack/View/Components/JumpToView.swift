//
//  JumpToView.swift
//  Slack
//
//  Created by Meghan Sun on 12/16/22.
//

import SwiftUI

struct JumpToView: View {
    @Binding var search: String
    @Binding var feedIsTyping: Bool
    
    var body: some View {
        
        CustomTextField(
            placeholder: Text("Jump to...").foregroundColor(Color("primary-text")),
            text:  $search,
            onEditingChanged: {self.feedIsTyping = $0}
        )
            .padding(12)
        
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color("primary-text"), lineWidth: 0.25)
            )
            .padding(.top, 5)
            .padding([.leading, .trailing], 10)
         
    
    }
}

struct JumpToView_Previews: PreviewProvider {
    @State var search = ""
    @State var feedIsTyping: Bool = false
    
    static var previews: some View {
        JumpToView(search: .constant(""), feedIsTyping: .constant(false))
            .preferredColorScheme(.dark)
    }
}
