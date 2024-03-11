//
//  LoginView.swift
//  InstagramSwiftUI
//
//  Created by Ehsan Rahimi on 3/8/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()

                VStack {
                    Image(.instagramLogoBlack)
                        .resizable()
                        .renderingMode(.template)
                        .scaledToFit()
                        .frame(width: 220, height: 100)
                        .foregroundStyle(.white)

                    VStack(spacing: 20.0) {
                        CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")

                        CustomSecureField(text: $password, placeholder: Text("Password"))
                    }
                    .padding(.horizontal, 32)

                    HStack {
                        Spacer()

                        Button(action: {}, label: {
                            Text("Forgot Password?")
                                .font(.system(size: 13, weight: .semibold))
                                .foregroundStyle(.white)
                                .padding(.top)
                                .padding(.trailing, 28)
                        })
                    }

                    Button(action: {
                        viewModel.login()
                    }, label: {
                        Text("Sign In")
                            .foregroundStyle(.white)
                            .font(.headline)
                            .fontWeight(.semibold)
                            .frame(height: 50)
                            .frame(minWidth: 0, maxWidth: 340)
                            .background(Color.purple.opacity(0.9))
                            .clipShape(Capsule())

                    })
                    .padding(.top)

                    Spacer()

                    NavigationLink {
                        RegisterationView()
                            .navigationBarBackButtonHidden()
                    } label: {
                        HStack {
                            Text("Don't have an account? ")
                            Text("Sign Up")
                                .fontWeight(.semibold)
                        }
                        .foregroundStyle(.white)
                        .font(.system(size: 14))
                    }
                }
            }
        }
    }
}

#Preview {
    LoginView()
        .environmentObject(AuthViewModel())
}
