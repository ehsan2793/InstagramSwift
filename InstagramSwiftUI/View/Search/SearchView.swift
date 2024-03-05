//
//  SearchView.swift
//  InstagramSwiftUI
//
//  Created by Ehsan Rahimi on 2/26/24.
//

import SwiftUI

struct SearchView: View {
    @State var searchText: String = ""
    @State var inSearchMode = false
    var body: some View {
        ScrollView {
            VStack {
                SearchBar(text: $searchText, isEditing: $inSearchMode)

                ZStack {
                    if inSearchMode {
                        UserListView()
                    } else {
                        PostGridView()
                    }
                }
                Spacer()
            }
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    SearchView()
}
