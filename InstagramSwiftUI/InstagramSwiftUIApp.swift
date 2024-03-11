//
//  InstagramSwiftUIApp.swift
//  InstagramSwiftUI
//
//  Created by Ehsan Rahimi on 2/26/24.
//

import Firebase
import SwiftUI

@main
struct InstagramSwiftUIApp: App {
    init() {
        FirebaseApp.configure()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(authViewModel)
        }
    }

    var authViewModel: AuthViewModel {
        AuthViewModel()
    }
}
