//
//  CustomTextField.swift
//  Slack
//
//  Created by Meghan Sun on 11/10/22.
//

import SwiftUI

struct CustomTextField: View {
    
    var placeholder: Text
    @Binding var text: String
    var onEditingChanged: (Bool)->()
    var commit: ()->() = { }
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty { placeholder }
            TextField("", text: $text, onEditingChanged: onEditingChanged, onCommit: commit)
        }
    }
    
}

