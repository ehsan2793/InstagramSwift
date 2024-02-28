//
//  FeedCell.swift
//  InstagramSwiftUI
//
//  Created by Ehsan Rahimi on 2/26/24.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(.joker)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 36, height: 36)
                    .clipShape(Circle())

                Text("Joker")
                    .font(.system(size: 14, weight: .semibold))
            }
            .padding([.leading, .bottom], 8)

            //: post image
            Image(.batman)
                .resizable()
                .scaledToFit()
                .clipped()

            //: action button

            HStack(spacing: 16.0) {
                Button(action: /*@START_MENU_TOKEN@*/ {}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "heart")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .font(.system(size: 20))
                        .padding(4)
                })
                Button(action: /*@START_MENU_TOKEN@*/ {}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "bubble.right")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .font(.system(size: 20))
                        .padding(4)
                })
                Button(action: /*@START_MENU_TOKEN@*/ {}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "paperplane")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .font(.system(size: 20))
                        .padding(4)
                })
            }
            .foregroundStyle(.black)
            .padding(.leading, 4)

            Text("0 Likes")
                .font(.system(size: 14, weight: .semibold))
                .padding(.leading, 8)
                .padding(.bottom, 2)

            //: caption
            HStack {
                Text("Batman")
                    .font(.system(size: 14, weight: .semibold)) +
                    Text(" All men have limits. They learn what they are and learn not to exceed them. I ignore mine")
                    .font(.system(size: 15))
            }
            .padding(.horizontal, 8)
            .padding(.bottom, 1)

            Text("2d")
                .font(.system(size: 14))
                .foregroundStyle(.gray)
                .padding(.leading, 8)
              
        }
    }
}

#Preview {
    FeedCell()
}
