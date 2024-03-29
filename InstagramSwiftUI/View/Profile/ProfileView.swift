//
//  ProfileView.swift
//  InstagramSwiftUI
//
//  Created by Ehsan Rahimi on 2/26/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView {
            VStack {
                ProfileHeaderView()

                PostGridView()
            }
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    ProfileView()
}
