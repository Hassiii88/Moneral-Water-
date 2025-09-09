//
//  CustomRadioButton.swift
//  Minaral Water
//
//  Created by Haseeb Farooq on 08/09/2025.
//


import SwiftUI

struct CustomRadioButton: View {
    var label: String
    var isSelected: Bool
    var buttonAction: () -> Void
        
    var body: some View {
        Button {
            buttonAction()
        } label: {
            HStack {
                Image(isSelected ? "Iconfill" : "Icon")
                    .resizable()
                    .frame(width: 25, height: 25)
                
                Text(label)
                    .font(.system(size: 18, weight: .medium))
                    .foregroundColor(.black)
            }
        }
        .buttonStyle(PlainButtonStyle())
    }
}
