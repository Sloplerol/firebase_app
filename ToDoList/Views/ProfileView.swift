//
//  ProfileView.swift
//  ToDoList
//
//  Created by satrol_ on 2024/4/5.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var modelview = ProfileViewViewModel()
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("Profile")
        }
        
    }
}

#Preview {
    ProfileView()
}
