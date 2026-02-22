//
//  RegisterViewViewModel.swift
//  ToDoApp
//
//  Created by Aysu on 22.02.2026.
//

import FirebaseAuth
import Foundation
import Combine
import FirebaseFirestore

class RegisterViewViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var name: String = ""

    init() {}

    func register() {
        guard validate()
        else {
            return
        }
        //Create User
        //weak self --> bellek sızıntısı olmaması için
        Auth.auth().createUser(withEmail: email, password: password) { [weak self] authResult, error in
            guard let id = authResult?.user.uid else {
                return
            }
            self?.insertUserRecord(userId: id)
        }
        print ("onclicked")
    }

    private func insertUserRecord(userId: String) {
        let newUser = User(
            id: userId,
            name: name,
            email: email,
            joined: Date().timeIntervalSince1970
        )
        
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .setData(newUser.asDictionary())
    }

    private func validate() -> Bool {
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
            !email.trimmingCharacters(in: .whitespaces).isEmpty,
            !password.trimmingCharacters(in: .whitespaces).isEmpty
        else {
            return false
        }
        guard email.contains("@") && email.contains(".") else {
            return false
        }
        return true
    }
}
