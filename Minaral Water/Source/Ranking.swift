//
//  Ranking.swift
//  Minaral Water
//
//  Created by Haseeb Farooq on 08/09/2025.
//

import SwiftUI

struct Ranking: View {
    @State private var selectedRanking: String? = "taste_Of_Water"
    
    var body: some View {
        VStack(spacing : 20) {
            
            CustomLogoView(imageName : "logo",width: 130, height: 130)
            
            Text("Ranking")
                .font(.system(size: 24, weight: .bold, design: .default))
            
            rankingSelectionView()
            waterBrandList()

            Spacer()
        }
        
    }
    
    private func rankingSelectionView() -> some View {
        
        VStack(alignment: .leading, spacing: 15) {
            
            CustomRadioButton(label: "Taste of water", isSelected: selectedRanking == "taste_Of_Water" ? true : false, buttonAction: {
                selectedRanking = "taste_Of_Water"
            })
            
            CustomRadioButton(label: "Bottle Quality", isSelected: selectedRanking == "bottle_Quality" ? true : false, buttonAction: {
                selectedRanking = "bottle_Quality"
            })
            
            CustomRadioButton(label: "Delivery Service", isSelected: selectedRanking == "delivery_Service" ? true : false, buttonAction: {
                selectedRanking = "delivery_Service"
            })
        }
    }
    private func waterBrandList() -> some View {
        let brands = [
            (1, "Nestle",3),
            (2, "Murree",3),
            (3, "Aquarion",3),
            (4, "Aquafina",3),
            (5, "Lime Light",3)
        ]
        
        return VStack(spacing: 0) {
            // Header Row
            HStack {
                Text("S.no")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("Name")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .center)
                Text("Rating")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .center)
                Text("Action")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            .padding()
            .background(Color.cyan.opacity(0.3))
            
            Divider()
            
            // Data Rows
            ForEach(brands, id: \.0) { brand in
                HStack {
                    Text("\(brand.0)")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text(brand.1)
                        .frame(maxWidth: .infinity, alignment: .center)
                    Text("\(brand.2)")
                        .frame(maxWidth: .infinity, alignment: .center)
                    Image(systemName: "trash.fill")
                        .foregroundColor(.red)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .padding()
                .background(Color.cyan.opacity(0.1))
                
                Divider()
                    .background(.black)
                    .frame(height: 5)
            }
        }
        .cornerRadius(8)
        .padding()
    }

    
}

#Preview {
    Ranking()
}
