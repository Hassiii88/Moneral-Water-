//
//  CustomButton.swift
//  Minaral Water
//
//  Created by Haseeb Farooq on 08/09/2025.
//
import SwiftUI

// MARK: - Reusable Button
struct CustomButton: View {
    var title: String
    var width: CGFloat = 200
    var height: CGFloat = 50
    var fontSize: CGFloat = 18
    var isbackGround: Bool = true
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: fontSize, weight: .medium))
                .foregroundColor(isbackGround ? .white : Color(.main))
                .frame(width: width, height: height)
                .background(isbackGround ? Color(.main) : .clear)
                .clipShape(Capsule())
                .underline(isbackGround ? false : true)
        }
    }
}
