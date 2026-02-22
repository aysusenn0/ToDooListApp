//
//  ToDoListButtonView.swift
//  ToDoApp
//
//  Created by Aysu on 22.02.2026.
//

import SwiftUI

struct ToDoListButtonView: View {
    let title: String
    let backgroundColor: Color
    let action: () -> Void

    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(backgroundColor)

                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
        }
    }
}

#Preview {
    ToDoListButtonView(title: "Test", backgroundColor: .yellow) {
        //Action
    }
}
