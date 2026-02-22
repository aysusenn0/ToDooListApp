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
            if viewModel.isSignedIn , !viewModel.currentUserID.isEmpty {
                ToDoListView()
            }
            else {
             LoginView()
            }
        }
    }

}

#Preview {
    MainView()
}
