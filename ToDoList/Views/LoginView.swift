//
//  LoginView.swift
//  ToDoList
//
//  Created by satrol_ on 2024/4/5.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        
        NavigationView {
            VStack {
                //Header
                HeaderView(title: "To Do List", subtitle: "Get Things Enough", angle: 15, background: Color.pink)
                
                //Login form
                
                Form {
                    if !viewModel.errorMsg.isEmpty {
                        Text(viewModel.errorMsg)
                            .foregroundColor(.red)
                    }
                    
                    TextField("Email Address",text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                
                    SecureField("Password",text: $viewModel.passwd)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    
                    TLButton(background: .blue, title: "Log in") {
                        viewModel.login()
                    }
                }
                .offset(y:-50)
                
                
                //Create Account
                VStack {
                    Text("New Around Here ?")
                    
                    NavigationLink("Create an Account",destination: RegisterView())
                }
                .padding(.bottom,50)
                
                Spacer()
            }
        }

    }
}

#Preview {
    LoginView()
}
