//
//  NotificationCell.swift
//  InstagramSwiftUI
//
//  Created by Ehsan Rahimi on 3/1/24.
//

import SwiftUI

struct NotificationCell: View {
    @State private var showPostImage: Bool = false
    var body: some View {
        HStack {
            Image(.batman)
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(Circle())

            Text("Batman")
                .font(.system(size: 14, weight: .semibold))
                + Text(showPostImage ? " Liked one of your post" : "Started following you")
                .font(.system(size: 14))

            Spacer()

            if showPostImage {
                Image(.joker)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
            } else {
                Button(action: { showPostImage.toggle() }, label: {
                    Text("Following")
                        .padding(.horizontal, 20)
                        .padding(.vertical, 8)
                        .foregroundStyle(.white)
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .background(.primary)
                        .clipShape(RoundedRectangle(cornerRadius: 25.0))

                })
            }
        }
        .padding(.horizontal)
        .padding(.top)
    }
}

#Preview {
    NotificationCell()
}
