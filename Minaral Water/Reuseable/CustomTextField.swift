//
//  CustomTextField.swift
//  Minaral Water
//
//  Created by Haseeb Farooq on 08/09/2025.
//


import SwiftUI

// MARK: - Reusable TextField
struct CustomTextField: View {
    var placeholder: String
    @Binding var text: String
    var isSecure: Bool = false
    
    var body: some View {
        Group {
            if isSecure {
                SecureField(placeholder, text: $text)
            } else {
                TextField(placeholder, text: $text)
            }
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(20)
    }
}