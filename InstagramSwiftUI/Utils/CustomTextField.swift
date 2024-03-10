//
//  CustomTextField.swift
//  InstagramSwiftUI
//
//  Created by Ehsan Rahimi on 3/9/24.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var text: String
    let placeholder: Text
    let imageName: String
    var body: some View {
        ZStack(alignment: .leading) {
           
        
            if text.isEmpty {
                placeholder.foregroundStyle(Color(.init(white: 1, alpha: 0.8)))
                    .padding(.leading, 40)
            }
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)

                TextField("", text: $text)
            }
        }
        .padding()
        .background(Color(.init(white: 1, alpha: 0.15)))
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .foregroundStyle(.white)
    }
}

#Preview {
    CustomTextField(text: .constant(""), placeholder: Text("Email"), imageName: "envelope")
}
