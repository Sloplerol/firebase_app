//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by satrol_ on 2024/4/5.
//

import FirebaseCore
import SwiftUI
//import FirebaseAuth
@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
//        try?Auth.auth().signOut()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
  
