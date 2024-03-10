//
//  CustomSecureField.swift
//  InstagramSwiftUI
//
//  Created by Ehsan Rahimi on 3/9/24.
//

import SwiftUI

struct CustomSecureField: View {
    @Binding var text: String
    let placeholder: Text
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                placeholder.foregroundStyle(Color(.init(white: 1, alpha: 0.8)))
                    .padding(.leading, 40)
            }
            HStack {
                Image(systemName: "lock")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)

                SecureField("", text: $text)
            }
        }
        .padding()
        .background(Color(.init(white: 1, alpha: 0.15)))
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .foregroundStyle(.white)
    }
}

#Preview {
    CustomSecureField(text: .constant(""), placeholder: Text("Password"))
}
