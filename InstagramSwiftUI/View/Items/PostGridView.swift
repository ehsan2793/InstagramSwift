//
//  PostGridView.swift
//  InstagramSwiftUI
//
//  Created by Ehsan Rahimi on 2/28/24.
//

import SwiftUI

struct PostGridView: View {
    private let items = [GridItem(), GridItem(), GridItem()]
    private let width = UIScreen.main.bounds.width / 3
    var body: some View {
        LazyVGrid(columns: items, spacing: 2) {
            ForEach(0 ..< 20) { _ in
                NavigationLink(destination: FeedView()) {
                    Image(.batman)
                        .resizable()
                        .scaledToFill()
                        .frame(width: width, height: width)
                        .clipped()
                }
            }
        }
        .padding(.horizontal, 1)
    }
}

#Preview {
    NavigationView {
        PostGridView()
    }
}
