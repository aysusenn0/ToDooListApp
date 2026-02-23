//
//  ToDoListView.swift
//  ToDoApp
//
//  Created by Aysu on 22.02.2026.
//

import FirebaseFirestore
import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel: ToDoListItemViewViewModel
    @FirestoreQuery var items: [ToDoListItem]

    init(userId: String) {
        //users/id/todos/entries
        self._items = FirestoreQuery(
            collectionPath:
                "users/\(userId)/todos"
        )
        self._viewModel = StateObject(
            wrappedValue: ToDoListItemViewViewModel(userId: userId)
        )
    }

    var body: some View {
        NavigationView {
            VStack {
                List(items) { item in
                    ToDoListItemView(item: item)
                        .swipeActions {
                            Button("Delete") {
                                viewModel.deleteItem(id: item.id)
                            }.tint(.red)
                        }
                }
                .listStyle(PlainListStyle())
            }.navigationTitle("To Do List")
                .toolbar {
                    Button {
                        viewModel.showingNewItemView = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
                .sheet(isPresented: $viewModel.showingNewItemView) {
                    NewItemView(newItemPresented: $viewModel.showingNewItemView)
                }
        }
    }
}

#Preview {
    ToDoListView(userId: "XABmnjCxFmhI9iPo5euR7q7PKn82")
}
