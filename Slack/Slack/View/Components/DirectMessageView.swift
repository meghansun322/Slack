//
//  DirectMessageView.swift
//  Slack
//
//  Created by Meghan Sun on 12/16/22.
//

import SwiftUI

struct DirectMessageView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var backButton : some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            DMHeaderView(directMessage: directMessage.model)
        }
    }
    
    @StateObject var directMessage: DirectMessageViewModel
    
    @State var myMessage: String = ""
    @State var isTyping: Bool = false
    
    
    var body: some View {
        
        NavigationStack{
            
            ZStack{
                VStack {
                    
                    VStack (alignment: .leading){
                        
                        ForEach(directMessage.messages, id: \.self){ item in
                            MessageView(message: item)
                        }
                        
                        Spacer()
                        
                        Divider()
                            .overlay(.gray)
                        
                        DirectMessageInputView(directMessage: directMessage, myMessage: $myMessage,
                        isTyping: $isTyping)
                       
                    }

                    
                }

            }
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: backButton)
            
        }
    }
    
}
    
struct DMHeaderView: View {
    var directMessage: DirectMessage
    
    var body: some View {
        HStack (spacing: 10){
            
            Image(systemName: "chevron.left")
                .foregroundColor(.white)
                .padding(5)
            
            Image(directMessage.names[0].image)
                .resizable()
                .frame(width: 35, height: 35)
                .cornerRadius(5)
                .padding(.trailing, 5)
            
            VStack (alignment: .leading){
                Text("\(directMessage.names[0].name)")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }

        }
        .padding([.top,.bottom])
    }
}


struct DirectMessageInputView: View {
    var directMessage: DirectMessageViewModel
    @Binding var myMessage: String
    @Binding var isTyping: Bool
    
    var body: some View {
        
        HStack {
            Image(systemName: "plus.circle")
    
            CustomTextField(
                placeholder: Text("Message")
                    .font(.headline),
                text:  $myMessage,
                onEditingChanged: {self.isTyping = $0}
            )
            .font(.subheadline)
            .onSubmit {
                directMessage.addMessage(new: myMessage);
                myMessage = ""
                print(directMessage.messages)
            }
      
            
            Spacer()
            Image(systemName: "mic")
        }
        .padding()
        .foregroundColor(Color("light-gray"))
        
    }
}


struct DirectMessageView_Previews: PreviewProvider {
    static var previews: some View {
        DirectMessageView(directMessage: DirectMessageViewModel(directMessage: DirectMessage.direct_message_example))
            .preferredColorScheme(.dark)
    }
}
