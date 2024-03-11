//
//  ContentView.swift
//  InstagramSwiftUI
//
//  Created by Ehsan Rahimi on 2/26/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel

    var body: some View {
        Group {
            if viewModel.userSession == nil {
                LoginView()
            } else {
                MainTabView()
            }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(AuthViewModel())
}
