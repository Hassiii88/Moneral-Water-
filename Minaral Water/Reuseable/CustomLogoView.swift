//
//  CustomLogoView.swift
//  Minaral Water
//
//  Created by Haseeb Farooq on 08/09/2025.
//


import SwiftUI

// MARK: - Reusable Logo View
struct CustomLogoView: View {
    var imageName: String = "logo"
    var width: CGFloat?
    var height: CGFloat?
    
    
    var body: some View {
        VStack() {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: width, height: height)
              
        }
    }
}
