//
//  ContentView.swift
//  ToDoApp
//
//  Created by Aysu on 22.02.2026.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    var body: some View {
        NavigationView {
            if viewModel.isSignedIn, !viewModel.currentUserID.isEmpty {
                accountView
            } else {
                LoginView()
            }
        }
    }

    @ViewBuilder
    var accountView: some View {
        TabView {
            ToDoListView(userId: viewModel.currentUserID)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }
        }
    }

}

#Preview {
    MainView()
}
