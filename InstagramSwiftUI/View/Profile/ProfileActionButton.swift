//
//  ProfileActionButton.swift
//  InstagramSwiftUI
//
//  Created by Ehsan Rahimi on 3/4/24.
//

import SwiftUI

struct ProfileActionButton: View {
    var isCurrentUser = false
    @Binding var isFollowed: Bool
    var body: some View {
        if isCurrentUser {
            Button(action: /*@START_MENU_TOKEN@*/ {}/*@END_MENU_TOKEN@*/, label: {
                Text("Edit Profile")
                    .foregroundStyle(.adjustableText)
                    .font(.system(size: 14, weight: .semibold))
                    .padding(6)
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: 320)

                    .overlay {
                        RoundedRectangle(cornerRadius: 3)
                            .stroke(.gray, lineWidth: 1)
                    }
            })
        } else {
            HStack {
                Button(action: { isFollowed.toggle() }, label: {
                    Text(isFollowed ? "Following" : "Follow")
                        .foregroundStyle(isFollowed ? .white : .adjustableText)
                        .font(.system(size: 14, weight: .semibold))
                        .padding(6)
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: 320)

                        .overlay {
                            RoundedRectangle(cornerRadius: 3)
                                .stroke(isFollowed ? .blue : .gray, lineWidth: 1)
                        }
                        .background(isFollowed ? .blue.opacity(1) : Color.clear)
                })

                Button(action: /*@START_MENU_TOKEN@*/ {}/*@END_MENU_TOKEN@*/, label: {
                    Text("Message")
                        .foregroundStyle(.adjustableText)
                        .font(.system(size: 14, weight: .semibold))
                        .padding(6)
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: 320)

                        .overlay {
                            RoundedRectangle(cornerRadius: 3)
                                .stroke(.gray, lineWidth: 1)
                        }
                })
            }
        }
    }
}

#Preview {
    ProfileActionButton( isFollowed: .constant(true))
}
