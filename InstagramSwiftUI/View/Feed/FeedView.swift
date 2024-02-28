//
//  FeedView.swift
//  InstagramSwiftUI
//
//  Created by Ehsan Rahimi on 2/26/24.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView {
            ForEach(0 ..< 10) { _ in
                FeedCell()
            }
        }
    }
}

#Preview {
    FeedView()
}
