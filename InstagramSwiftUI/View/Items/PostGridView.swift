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
        LazyVGrid(columns: items, spacing: 2, content: {
            ForEach(0 ..< 10) { _ in
                Image(.batman)
                    .resizable()
                    .scaledToFill()
                    .frame(width: width, height: width)
                    .clipped()
            }
        })
    }
}

#Preview {
    PostGridView()
}
