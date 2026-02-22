//
//  RegisterView.swift
//  ToDoApp
//
//  Created by Aysu on 22.02.2026.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    var body: some View {
        VStack {
            //Header

            HeaderView(
                title: "Register",
                subtitle: "Start organizing todos",
                angle: -15,
                backgroundColor: .orange
            )

            //Register Form

            Form {
                TextField("Your Name", text: $viewModel.name)
                    .textFieldStyle(.automatic)
                    .autocorrectionDisabled()
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(.automatic)
                    .autocapitalization(.none)
                    .autocorrectionDisabled()

                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(.automatic)

                ToDoListButtonView(
                    title: "Create Account",
                    backgroundColor: .green
                ) {
                    viewModel.register()
                }.padding()
            }.offset(y: -50)

            Spacer()

        }
    }
}

#Preview {
    RegisterView()
}
