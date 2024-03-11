//
//  AuthViewModel.swift
//  InstagramSwiftUI
//
//  Created by Ehsan Rahimi on 3/10/24.
//

import Firebase
import FirebaseAuth
import SwiftUI

class AuthViewModel: ObservableObject {
    @Published var userSession: User?

    static let shared = AuthViewModel()

    init() {
        userSession = Auth.auth().currentUser
    }

    func login() {
        print("login")
    }

    func register(email: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            guard let user = result?.user else { return }
            self.userSession = user
            print("Registered User")
        }
    }

    func signout() {
        userSession = nil
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
        } catch let signOutError as NSError {
            print("Error signing out: %@", signOutError)
        }
    }

    func fetchUser() {
        print("fetchUser")
    }

    func resetPassword() {
    }
}
