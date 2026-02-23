//
//  ToDoListItemViewModel.swift
//  ToDoApp
//
//  Created by Aysu on 22.02.2026.
//

import Combine
import FirebaseAuth
import FirebaseFirestore
import Foundation

class ToDoListItemViewModel: ObservableObject {

    init() {}

    func toogleIsDone(item: ToDoListItem) {
        var newItem = item
        newItem.setDone(!item.isCompleted)  //mutable olması için tekrar oluşturdum

        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }

        let db = Firestore.firestore()

        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(newItem.id)
            .setData(newItem.asDictionary())
    }
}
