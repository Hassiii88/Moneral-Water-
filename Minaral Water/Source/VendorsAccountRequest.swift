//
//  Vendors Account Request.swift
//  Minaral Water
//
//  Created by Haseeb Farooq on 11/09/2025.
//

import SwiftUI

struct Vendors_Account_Request: View {
    
    var body: some View {
        
        VStack {
            CustomLogoView(imageName: "logo",width: 130, height: 130)
                .padding()
            Text("Vender Account Request")
                .font(.system(size: 20, weight: .bold, design: .default))
                .foregroundColor(.black)
            
            venderRequest()
            Spacer()
        }
        
    }
    private func venderRequest() -> some View {
        let request = [
            (1, "Nestle"),
            (2, "Aqua"),
            (3, "Sparkle"),
            
        ]
        
        return VStack(spacing: 0) {
            HStack{
                Text("S.no")
                    .fontWeight(.bold)
                    .frame(width: 50, alignment: .leading)
                    
                Text("Name")
                    .fontWeight(.bold)
                    Spacer()
                Text("Remarks")
                    .fontWeight(.bold)
                Spacer()
                
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.cyan.opacity(0.3))
            Divider()
            
            ForEach(request, id: \.0) { item in
                HStack{
                    
                    Text("\(item.0)")
                        .frame(width: 50, alignment: .leading)
                     
                    Text("\(item.1)")
                      Spacer()
                    CustomButton(title: "Accept", width: 90, height: 40, fontSize: 20, isbackGround: true, backgroundColor: Color(.green)) {
                        
                    }
                    CustomButton(title: "Reject", width: 90, height: 40, fontSize: 20, isbackGround: true, backgroundColor: Color(.red)) {
                        
                    }
                }
                .padding(.vertical)
                .padding(.horizontal)
                .background(Color.gray.opacity(0.05))
                .cornerRadius(8)
                .padding(.horizontal, 4)
                
            }
        }
    }
}
#Preview {
    Vendors_Account_Request()
}
