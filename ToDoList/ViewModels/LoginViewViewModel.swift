//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by satrol_ on 2024/4/5.
//

import FirebaseAuth
import Foundation

class LoginViewViewModel:ObservableObject  {
    @Published var email = ""
    @Published var passwd = ""
    @Published var errorMsg = ""
    
    init(){
        
    }
    
    func login() {
        guard validate() else {
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: passwd)
    }
    
    private func validate() -> Bool{
        errorMsg = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,!passwd.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMsg = "Please fill the blank part"
            
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMsg = "Email Address is illegal,Must contains @ and ."
            
            return false
        }
        
        return true
    }
    
    
}
