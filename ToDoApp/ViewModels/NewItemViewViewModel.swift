//
//  NewItemViewViewModel.swift
//  ToDoApp
//
//  Created by Aysu on 22.02.2026.
//

import Combine
import FirebaseAuth
import FirebaseFirestore
import Foundation

class NewItemViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var showAlert = false
    init() {}

    func save() {
        guard canSave else {
            return
        }
        //id'ye göre kaydedeceğim

        guard let uId = Auth.auth().currentUser?.uid else {
            return
        }
        let newId = UUID().uuidString
        let newItem = ToDoListItem(
            id: newId,
            title: title,
            isCompleted: false,
            dueDate: dueDate.timeIntervalSince1970,
            createdDate: Date().timeIntervalSince1970
        )
        
        
        let db = Firestore.firestore()

        db.collection("users")
            .document(uId)
            .collection("todos")
            .document(newId)
            .setData(newItem.asDictionary())
    }

    var canSave: Bool {
        guard !title.isEmpty else {
            return false
        }
        guard dueDate >= Date().addingTimeInterval(-86400) else {  //bir gündeki saniye sayısı
            return false
        }
        return true
    }

}
