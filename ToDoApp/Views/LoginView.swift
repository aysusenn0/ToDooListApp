//
//  LoginView.swift
//  ToDoApp
//
//  Created by Aysu on 22.02.2026.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()

    var body: some View {
        NavigationView {
            VStack {
                //HEADER

                HeaderView(
                    title: "To Do List",
                    subtitle: "Get things done!",
                    angle: 15,
                    backgroundColor: Color.pink
                )

                //LOGİN FORM
                
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    TextField("Email Address ", text: $viewModel.email)
                        .textFieldStyle(.automatic)
                        .autocapitalization(.none)
                    SecureField("Password ", text: $viewModel.password)
                        .textFieldStyle(.automatic)
                    ToDoListButtonView(
                        title: "Log In",
                        backgroundColor: .blue
                    ) {
                        viewModel.login()
                    }
                    .padding()
                }

                //CREATE ACCOUNT

                VStack {
                    Text("New Around Here ?")

                    NavigationLink(
                        "Create An Account",
                        destination: RegisterView()
                    )
                }.padding(.bottom, 30)
            }
        }
    }
}

#Preview {
    LoginView()
}
