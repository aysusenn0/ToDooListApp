//
//  ToDoListItemViewViewModel.swift
//  ToDoApp
//
//  Created by Aysu on 22.02.2026.
//

import Combine
import FirebaseFirestore
import Foundation
import FirebaseAuth

class ToDoListItemViewViewModel: ObservableObject {
    
    @Published var showingNewItemView = false

    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }

    func deleteItem(id: String) {
        let db = Firestore.firestore()

        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
    
    
}
