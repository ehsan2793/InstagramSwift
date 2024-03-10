//
//  plusPhotoButton.swift
//  InstagramSwiftUI
//
//  Created by Ehsan Rahimi on 3/10/24.
//

import SwiftUI

struct plusPhotoButton: View {
//    @Binding var photo:  Image(uiImage: (postImage ?? UIImage(systemName: "photo"))!)
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 2)
                .frame(width: 140, height: 140)

            VStack(spacing: 20.0) {
                Image(systemName: "plus")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)

                Text("Photo")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
        }
    
    }
}

#Preview {
    plusPhotoButton()
}
