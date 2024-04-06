//
//  TLButton.swift
//  ToDoList
//
//  Created by satrol_ on 2024/4/5.
//

import SwiftUI

struct TLButton: View {
    let background:Color
    let title:String
    let action: () -> Void
    
    var body: some View {
        Button{
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
    }
}

#Preview {
    TLButton(background: .blue, title: "Click the Button") {
        
    }
}
