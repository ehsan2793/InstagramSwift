//
//  ImagePicker.swift
//  InstagramSwiftUI
//
//  Created by Ehsan Rahimi on 3/7/24.
//

import PhotosUI
import SwiftUI
struct ImagePicker: View {
//    @Binding var selectedImage: UIImage
    @State var imageSeleted: PhotosPickerItem? = nil
    @State var presentPicker = false
    @Binding var image: Image?
    var body: some View {
        VStack {
            Spacer()
//            if let image {
//                image.resizable()
//                    .resizable()
//                    .aspectRatio(contentMode: .fill)
//
//            }

            PhotosPicker(selection: $imageSeleted,
                         matching: .images,
                         preferredItemEncoding: .compatible,
                         label: {})
                .photosPickerStyle(.inline)
                .photosPickerAccessoryVisibility(.hidden, edges: [.top, .bottom])
                .photosPickerDisabledCapabilities([.selectionActions, .search])
                .frame(height: 400)
                .background(.white)
        }
        .ignoresSafeArea(.keyboard)
        .task {
            if let imageSeleted = imageSeleted {
                image = try? await imageSeleted.loadTransferable(type: Image.self)
                return
            }

            if image == nil {
                image = Image(systemName: "photo.circle")
            }
        }
    }
}

#Preview {
    ImagePicker(image: .constant(Image(systemName: "photo.circle")))
}
