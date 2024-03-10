//
//  UploadPostView.swift
//  InstagramSwiftUI
//
//  Created by Ehsan Rahimi on 2/26/24.
//

import PhotosUI
import SwiftUI

struct UploadPostView: View {
    @State var postImage: UIImage?
    @State private var photoPickerItem: PhotosPickerItem?
    @State private var captionText = ""
    var body: some View {
        VStack {
            if postImage == nil {
                PhotosPicker(selection: $photoPickerItem, matching: .images) {
                    plusPhotoButton()
                        .foregroundStyle(.adjustableText)
                }

            } else {
                HStack(alignment: .top) {
                    PhotosPicker(selection: $photoPickerItem, matching: .images) {
                        Image(uiImage: (postImage ?? UIImage(systemName: "photo"))!)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }

//

                    TextField("Enter Your Caption", text: $captionText, axis: .vertical)
                }
                .padding()

                Button(action: /*@START_MENU_TOKEN@*/ {}/*@END_MENU_TOKEN@*/, label: {
                    Text("Share")
                        .foregroundStyle(.white)
                        .font(.system(size: 16, weight: .semibold))
                        .frame(minWidth: 0, maxWidth: 350)
                        .frame(height: 40)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 5))

                })
                .padding()
            }

            Spacer()
        }
        .onChange(of: photoPickerItem) {
            Task {
                if let photoPickerItem,
                   let data = try? await photoPickerItem.loadTransferable(type: Data.self) {
                    if let image = UIImage(data: data) {
                        postImage = image
                    }
                }
                photoPickerItem = nil
            }
        }
    }
}

#Preview {
    UploadPostView()
}
