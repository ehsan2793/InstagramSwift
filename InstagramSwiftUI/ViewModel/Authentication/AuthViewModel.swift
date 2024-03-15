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

    func login(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: LOGIN FAILED " + error.localizedDescription)
                return
            }

            guard let user = result?.user else { return }
            self.userSession = user
        }
    }

    func register(email: String, password: String, image: UIImage?, fullname: String, username: String) {
        guard let image = image else { return }
        ImageUploader.uploadImage(image: image) { imageUrl in
            Auth.auth().createUser(withEmail: email, password: password) { result, error in
                if let error = error {
                    print(error.localizedDescription)
                    return
                }
                guard let user = result?.user else { return }
                print("Registered User")
                let data = [
                    "email": email,
                    "username": username,
                    "fullname": fullname,
                    "profileImageUrl": imageUrl,
                    "uid": user.uid,
                ]

                Firestore.firestore().collection("users").document(user.uid).setData(data) { _ in
                    self.userSession = user
                }
            }
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
