//
//  ResetPasswordView.swift
//  InstagramSwiftUI
//
//  Created by Ehsan Rahimi on 3/8/24.
//

import SwiftUI

struct ResetPasswordView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ResetPasswordView()
        .environmentObject(AuthViewModel())
}
