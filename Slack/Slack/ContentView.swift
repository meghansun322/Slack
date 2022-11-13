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
            ChannelsFeedView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
