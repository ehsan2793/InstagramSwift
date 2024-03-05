//
//  ProfileHeaderView.swift
//  InstagramSwiftUI
//
//  Created by Ehsan Rahimi on 3/2/24.
//

import SwiftUI

struct ProfileHeaderView: View {
    @State var count = 1
    var body: some View {
        VStack(alignment: .leading, spacing: 8.0) {
            HStack {
                Image(.venuom)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())

                Spacer()

                HStack {
                    UserStatView(count: $count, type: "Posts")
                    UserStatView(count: $count, type: "Followers")
                    UserStatView(count: $count, type: "Follwoing")
                }
            }

            Text("Eddie Brook")
                .font(.system(size: 15, weight: .semibold))
            Text("Gotham's Dark Knight - Billionaire")
                .font(.system(size: 14))

            HStack {
                Spacer()
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
                Spacer()
            }
        }
        .padding(.horizontal)
        .padding(.bottom, 4)
    }
}

#Preview {
    ProfileHeaderView()
}

struct UserStatView: View {
    @Binding var count: Int
    var type: String
    var body: some View {
        VStack {
            Text("\(count)")
                .fontWeight(.semibold)
            Text("\(type)")
        }
        .font(.system(size: 15))
        .frame(width: 80)
    }
}
