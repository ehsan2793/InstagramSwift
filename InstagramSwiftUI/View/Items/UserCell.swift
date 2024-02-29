//
//  UserCell.swift
//  InstagramSwiftUI
//
//  Created by Ehsan Rahimi on 2/28/24.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            Image(.batman)
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())

            VStack(alignment: .leading) {
                Text("Batman")

                Text("Bruce Wayne")
                    .foregroundStyle(.secondary)
            }
            .font(.system(size: 14, weight: .semibold))

            Spacer()
        }
        .padding(.leading)
        .padding(.vertical, 4)
    }
}

#Preview {
    UserCell()
}
