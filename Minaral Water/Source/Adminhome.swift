//
//  Adminhome.swift
//  Minaral Water
//
//  Created by Haseeb Farooq on 29/08/2025.
//

import SwiftUI

struct Adminhome: View {
    
    // 2 columns banaye hain (aapko agar 3 columns chahiye to count: 3 kar dena)
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack(spacing: 20) {
                
                
                VStack(spacing :10) {
                    Image("logo")
                        .padding(.top, 0)
                }
                
                
                Text("Well Come Admin")
                    .font(.system(size: 40, weight: .light))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                
               
                LazyVGrid(columns: columns, spacing: 30) {
                    ExtractedView(imageName: "User", buttonTitle: "Vender Request")
                    ExtractedView(imageName: "ranking", buttonTitle: "Ranking")
                    ExtractedView(imageName: "multiuser", buttonTitle: "Total Users")
                    ExtractedView(imageName: "multivendors", buttonTitle: "Total Request")
                    ExtractedView(imageName: "totaldelivery", buttonTitle: "Total Delivery\nBoys")
                    ExtractedView(imageName: "deliveryboy", buttonTitle: "Orders")
                }
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(15)
            }
            .padding()
        }
    }
}

// Preview
struct CollectionViewWithImages_Previews: PreviewProvider {
    static var previews: some View {
        Adminhome()
    }
}

// Extracted View (Image + Button)
struct ExtractedView: View {
    let imageName: String
    let buttonTitle: String
    
    var body: some View {
        VStack(spacing: 20) {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipped()
                .cornerRadius(15)
            
            Button(action: {
                // Action for button
            }, label: {
                Text(buttonTitle)
                    .font(.system(size: 12, weight: .bold))
                    .foregroundColor(.white)
                    .frame(width: 120, height: 35)
                    .background(Color.main)
                    .cornerRadius(20)
            })
        }
    }
}
