//
//  RegisterationView.swift
//  InstagramSwiftUI
//
//  Created by Ehsan Rahimi on 3/8/24.
//

import PhotosUI
import SwiftUI

struct RegisterationView: View {
    @State private var photoPickerItem: PhotosPickerItem?
    @State private var selectedImage: UIImage?
    @State private var email = ""
    @State private var username = ""
    @State private var fullname = ""
    @State private var password = ""
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()

            VStack {
                PhotosPicker(selection: $photoPickerItem) {
                    if let selectedImage {
                        Image(uiImage: selectedImage)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 140, height: 140)
                            .clipShape(Circle())
                            .padding()
                    } else {
                        plusPhotoButton()
                            .padding()
                            .foregroundStyle(.white)
                    }
                }

                VStack(spacing: 20.0) {
                    CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")

                    CustomTextField(text: $username, placeholder: Text("Username"), imageName: "person")

                    CustomTextField(text: $fullname, placeholder: Text("Full Name"), imageName: "person")

                    CustomSecureField(text: $password, placeholder: Text("Password"))

                    Button(action: {
                        viewModel.register(email: email, password: password)
                    }, label: {
                        Text("Sign Up")
                            .foregroundStyle(.white)
                            .font(.headline)
                            .fontWeight(.semibold)
                            .frame(height: 50)
                            .frame(minWidth: 0, maxWidth: 340)
                            .background(Color.purple.opacity(0.9))
                            .clipShape(Capsule())

                    })
                    .padding(.top)
                }
                .padding(.horizontal, 32)

                Spacer()

                Button(action: {
                    dismiss()
                }) {
                    HStack {
                        Text("Already have an account? ")
                        Text("Sign In")
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.white)
                    .font(.system(size: 14))
                }
            }
        }
        .onChange(of: photoPickerItem) {
            Task {
                if let photoPickerItem,
                   let data = try? await photoPickerItem.loadTransferable(type: Data.self) {
                    if let image = UIImage(data: data) {
                        selectedImage = image
                    }
                }
                photoPickerItem = nil
            }
        }
    }
}

#Preview {
    RegisterationView()
        .environmentObject(AuthViewModel())
}
