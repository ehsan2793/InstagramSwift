//
//  SearchBar.swift
//  InstagramSwiftUI
//
//  Created by Ehsan Rahimi on 2/28/24.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    @Binding var isEditing: Bool
    var body: some View {
        HStack {
            TextField(text: $text, label: { Text("Search...") })
                .padding(8)
                .padding(.horizontal, 24)
                .background(Color(.systemGray6))
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(.gray)
                            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/ .infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    }
                    .padding(.leading, 8)
                )
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.3)) {
                        isEditing = true
                    }
                }
            
            if isEditing {
                Button(action: {
                    withAnimation(.easeInOut(duration: 0.3)) {
                        isEditing = false
                        text = ""
                        UIApplication.shared.endEditing()
                    }
                
                }, label: {
                    Text("Cancel")
                        .foregroundStyle(.buttonText)
                        .fontWeight(.semibold)
                        .font(.system(size: 14))
                        .transition(.slide)
                        .animation(.easeInOut, value: isEditing)
                })
            }
        }
        .padding()
    }
}

#Preview {
    SearchBar(text: .constant(""), isEditing: .constant(true))
}
