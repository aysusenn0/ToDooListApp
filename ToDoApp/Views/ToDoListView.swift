//
//  ToDoListView.swift
//  ToDoApp
//
//  Created by Aysu on 22.02.2026.
//

import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListItemViewViewModel()
     private let userID : String
    init(userId : String) {
        self.userID = userId
    }
    var body: some View {
        NavigationView {
            VStack {

            }.navigationTitle("To Do List")
                .toolbar {
                    Button {
                        viewModel.showingNewItemView = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
                .sheet(isPresented: $viewModel.showingNewItemView) {
                    NewItemView(newItemPresented : $viewModel.showingNewItemView)
                }
        }
    }
}

#Preview {
    ToDoListView(userId: "")
}
