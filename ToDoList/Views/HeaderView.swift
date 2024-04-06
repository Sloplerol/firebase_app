//
//  HeaderView.swift
//  ToDoList
//
//  Created by satrol_ on 2024/4/5.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle: Double
    let background:Color
    var body: some View {
        
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(background)
                    .rotationEffect(Angle(degrees: angle))
                
                VStack {
                    Text(title)
                        .font(.system(size: 50))
                        .bold()
                        .foregroundColor(.white)
                    
                    
                    Text(subtitle)
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                }
                .padding(.top,60)
            }
            .frame(width: UIScreen.main.bounds.width * 3,height: 350)
            .offset(y: -150)
            
            Spacer()    
            
        }
    
}

#Preview {
    HeaderView(title: "title", subtitle: "subtitle", angle: 15, background: Color.blue)
}
