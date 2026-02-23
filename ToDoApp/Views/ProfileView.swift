//
//  ProfileView.swift
//  ToDoApp
//
//  Created by Aysu on 22.02.2026.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    init() {}
    var body: some View {
        NavigationView {
            VStack {
                
            }.navigationTitle("Profile")
        }
    }
}

#Preview {
    ProfileView()
}
