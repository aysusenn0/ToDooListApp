//
//  ProfileView.swift
//  ToDoApp
//
//  Created by Aysu on 22.02.2026.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    init() {}
    var body: some View {
        NavigationView {
            VStack {
                if let user = viewModel.user {
                    profile(user: user)
                } else {
                    Text("Loading Profile")
                }
            }.navigationTitle("Profile")
        }.onAppear {
            viewModel.fetchUser()
        }
    }

    @ViewBuilder
    func profile(user: User) -> some View {
        //Avatar
        Image(systemName: "person.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(.blue)
            .frame(width: 125, height: 125)
            .offset(y: -40)
        //Info : name ,mail etc

        VStack(alignment: .leading) {
            HStack {
                Text("Name : ")
                    .bold()
                Text(user.name)
            }
            HStack {
                Text("Email : ")
                    .bold()
                Text(user.email)
            }
            HStack {
                Text("Member Since : ")
                    .bold()
                Text(
                    "\(Date(timeIntervalSince1970: user .joined).formatted(date: .abbreviated, time: .shortened))"
                )
            }
        }.padding(.bottom, 60)

        //Sign out

        ToDoListButtonView(title: "Log Out", backgroundColor: .red) {
            viewModel.logOut()
        }.padding(.top, 250)
        Spacer()
    }
}

#Preview {
    ProfileView()
}
