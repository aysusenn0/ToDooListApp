//
//  HeaderView.swift
//  ToDoApp
//
//  Created by Aysu on 22.02.2026.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle: Double
    let backgroundColor: Color

    var body: some View {
        ZStack {
            RoundedRectangle(cornerSize: .zero)
                .foregroundColor(backgroundColor)
                .rotationEffect(Angle(degrees: angle))

            VStack {
                Text(title)
                    .foregroundColor(.white)
                    .bold()
                    .font(.system(size: 50))
                Text(subtitle)
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
            }
            .padding(.top, 80)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 350)
        .offset(y: -150)
    }
}

#Preview {
    HeaderView(
        title: "To Do List",
        subtitle: "Get things done!",
        angle: 15,
        backgroundColor: Color.pink
    )
}
