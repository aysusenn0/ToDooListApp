//
//  ToDoListView.swift
//  ToDoApp
//
//  Created by Aysu on 22.02.2026.
//

import SwiftUI

struct ToDoListItemView: View {
    @StateObject var viewModel = ToDoListItemViewModel()
    let item: ToDoListItem

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.title)
                    .bold()
                    .font(.subheadline)
                Text(
                    "\(Date(timeIntervalSince1970: item.dueDate).formatted(date : .abbreviated , time: .shortened))"
                )
                .font(.footnote)
                .foregroundColor(Color(.secondaryLabel))
            }
            Spacer()

            Button {
                viewModel.toogleIsDone(item: item)
            } label: {
                Image(
                    systemName: item.isCompleted
                        ? "checkmark.circle.fill" : "circle"
                )
                .foregroundColor(.blue)
            }
        }
    }
}

#Preview {
    ToDoListItemView(
        item: .init(
            id: "123",
            title: "Get milk",
            isCompleted: true,
            dueDate: Date().timeIntervalSince1970,
            createdDate: Date().timeIntervalSince1970
        )
    )
}
