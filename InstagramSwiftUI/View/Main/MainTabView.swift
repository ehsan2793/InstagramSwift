//
//  MainTabView.swift
//  InstagramSwiftUI
//
//  Created by Ehsan Rahimi on 2/26/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        NavigationStack {
            TabView {
                FeedView()
                    .tabItem {
                        TabLabel(imageName: "house", label: "Feed")
                    }

                SearchView()
                    .tabItem {
                        TabLabel(imageName: "magnifyingglass", label: "Search")
                    }

                UploadPostView()
                    .tabItem {
                        TabLabel(imageName: "plus.square", label: "Upload")
                    }

                NotificationView()
                    .tabItem {
                        TabLabel(imageName: "heart", label: "Notification")
                    }

                ProfileView()
                    .tabItem {
                        TabLabel(imageName: "person", label: "Profile")
                    }
            }
            .tint(.black)
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
          
        }
     
    }
}

struct TabLabel: View {
    let imageName: String
    let label: String

    var body: some View {
        VStack {
            Image(systemName: imageName)
            Text(label)
        }
    }
}

#Preview {
    MainTabView()
}
