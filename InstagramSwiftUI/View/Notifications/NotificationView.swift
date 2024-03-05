//
//  NotificationView.swift
//  InstagramSwiftUI
//
//  Created by Ehsan Rahimi on 2/26/24.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0 ..< 20) { item in
                    NotificationCell()
                }
            }
        }
    }
}

#Preview {
    NotificationView()
}
