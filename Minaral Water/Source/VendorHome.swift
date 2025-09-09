//
//  Ranking.swift
//  Minaral Water
//
//  Created by Haseeb Farooq on 29/08/2025.
//

import SwiftUI

struct Product: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    let price: String
}

struct VendorHome: View {
    
    let products = [
        Product(image: "small", title: "Nestle Small bottle\n500 ML", price: "50 PKR"),
        Product(image: "pack", title: "Nestle Pure Life water\n 500 ML pack of 12", price: "600 PKR"),
        Product(image: "small", title: "Nestle large bottle \n1000 ML", price: "150 PKR"),
        
        Product(image: "aquafina", title: "Nestle Big bottle \n2000 ML", price: "300 PKR")
        ]

    
    var body: some View {
        
        ZStack {
            
            Color.main.opacity(0.3)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 0) {
                HStack(alignment: .center, spacing: 30) {
                    Image("logo")
                        .resizable()
                        .frame(width: 80, height: 80)
                    Text("Vendor Home")
                        .font(.system(size: 29, weight: .semibold))
                        .foregroundColor(.black)
                    Spacer()
                }
                .padding()
                
                VStack {
                    ScrollView {
                        VStack(spacing: 15) {
                            ForEach(products) { i in
                                VendorCard(
                                    imageName: i.image,title: i.title,price: i.price,
                                    onDelete: {
                                        print("Delete \(i.title) Index \(i)")
                                    },
                                    onDetail: {
                                        print("Detail \(i.title) Index \(i)")
                                    }
                                )
                            }
                        }
                        .padding()
                    }
                    
                }
                
                }
                Spacer()
            }//:- Main
        
           
        }
    //:- Zstack
    }
    


struct VendorCard: View {
    let imageName: String
    let title: String
    let price: String
    let onDelete: () -> Void
    let onDetail: () -> Void
    
    var body: some View {
        VStack(alignment: .center, spacing: 12) {
            HStack  {
                // Product Image
                Image(imageName)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(8)
                
                VStack(alignment: .leading, spacing: 6) {
                    Text(title)
                        .font(.system(size: 14, weight: .regular))
                        .foregroundColor(.black)
                        .lineLimit(2)
                    
                    Text(price)
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(.green)
                }
                
                Spacer()
            }
            
            Spacer()
            
            HStack(spacing: 50) {
                Button(action: onDelete) {
                    Text("delete")
                        .font(.system(size: 12, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.vertical, 6)
                        .padding(.horizontal, 16)
                        .background(Color.red)
                        .cornerRadius(10)
                }
                
                Button(action: onDetail) {
                    Text("detail")
                        .font(.system(size: 12, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.vertical, 6)
                        .padding(.horizontal, 16)
                        .background(Color.green)
                        .cornerRadius(10)
                }
            }
        }
        
        
        .padding()
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: .gray.opacity(0.6), radius: 5, x: 0, y: 2)
        
        
        
        
        
        }
    }
    
    
    struct SearchView: View {
        var body: some View {
            Text("🔍 Search Screen Abc")
                .font(.largeTitle)
                .padding()
        }
    }
    
    struct ProfileView: View {
        var body: some View {
            Text("👤 Profile Screen")
                .font(.largeTitle)
                .padding()
        }
    }

    

struct TabBarView: View {
    var body: some View {
        VStack{
            TabView {
                
                VendorHome()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                AddProduct()
                    .tabItem {
                        Image("Tiles")
                        Text("Add Product")
                    }
                
                ProfileView()
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("Profile")
                    }
               
            }
        }
    }
}

    
#Preview {
    TabBarView()
}

