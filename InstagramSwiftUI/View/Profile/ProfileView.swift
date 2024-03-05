//
//  ProfileView.swift
//  InstagramSwiftUI
//
//  Created by Ehsan Rahimi on 2/26/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            VStack {
                ProfileHeaderView()
                
                PostGridView()
            }
        }
    }
}

#Preview {
    ProfileView()
}
