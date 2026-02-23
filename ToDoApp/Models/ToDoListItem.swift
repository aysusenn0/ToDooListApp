//
//  ToDoListItem.swift
//  ToDoApp
//
//  Created by Aysu on 22.02.2026.
//

import Foundation

struct ToDoListItem : Codable , Identifiable {
    let id : String
    let title: String
    var isCompleted: Bool
    let dueDate : TimeInterval
    let createdDate : TimeInterval
    
    mutating func setDone (_ state : Bool) {
        isCompleted = state
    }
}
