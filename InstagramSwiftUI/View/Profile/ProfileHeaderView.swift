//
//  ProfileHeaderView.swift
//  InstagramSwiftUI
//
//  Created by Ehsan Rahimi on 3/2/24.
//

import SwiftUI

struct ProfileHeaderView: View {
    @State var count = 1
    @State var follow = false
    var body: some View {
        VStack(alignment: .leading, spacing: 5.0) {
            HStack {
                Image(.venuom)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 75, height: 75)
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

                ProfileActionButton(isCurrentUser: false, isFollowed: $follow)

                Spacer()
            }
        }
        .padding(.horizontal)
        .padding([.bottom, .top], 4)
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
