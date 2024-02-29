//
//  SearchView.swift
//  InstagramSwiftUI
//
//  Created by Ehsan Rahimi on 2/26/24.
//

import SwiftUI

struct SearchView: View {
    @State var searchText: String = ""
    var body: some View {
        ScrollView {
            SearchBar(text: $searchText)

            //: Grid View
        }
    }
}

#Preview {
    SearchView()
}
