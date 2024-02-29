//
//  UserListView.swift
//  InstagramSwiftUI
//
//  Created by Ehsan Rahimi on 2/28/24.
//

import SwiftUI

struct UserListView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(1 ..< 20) { _ in
                    UserCell()
                }
            }
        }
    }
}

#Preview {
    UserListView()
}
