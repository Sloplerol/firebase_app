//
//  RegisterView.swift
//  ToDoList
//
//  Created by satrol_ on 2024/4/5.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    var body: some View {
        VStack {
            HeaderView(title: "Register", subtitle: "Start organizing tods", angle: -15, background: Color.yellow)
            
            Form {
                TextField("Full Name",text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email Address",text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .autocorrectionDisabled()
                
                SecureField("Password",text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(background: .green, title: "Create Account") {
                    viewModel.register()
                }
                .padding()
            }
            .offset(y: -50)
            
            
            
            
        
        }
    }
}

#Preview {
    RegisterView()
}
