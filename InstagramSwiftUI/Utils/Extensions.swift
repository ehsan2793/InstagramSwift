//
//  Extensions.swift
//  InstagramSwiftUI
//
//  Created by Ehsan Rahimi on 2/28/24.
//

import UIKit

extension UIApplication {
    func endEditing () {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}


