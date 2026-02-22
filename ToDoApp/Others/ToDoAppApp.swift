//
//  ToDoAppApp.swift
//  ToDoApp
//
//  Created by Aysu on 22.02.2026.
//

import SwiftUI
import FirebaseCore

@main
struct ToDoAppApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
