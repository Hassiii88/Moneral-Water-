//
//  AddProduct.swift
//  Minaral Water
//
//  Created by Haseeb Farooq on 06/09/2025.
//

import SwiftUI

struct AddProduct: View {
    @State private var selectedCity = "Lahore" // default city
    let cities = ["Lahore", "Karachi", "Islamabad", "Multan", "Peshawar"]
    
    var body: some View {
        
        
        ZStack {
            Color.main.opacity(0.3)
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(.vertical, showsIndicators: false){
                
                VStack(spacing :0){
                    Image("logo")
                        .resizable()
                        .frame(width: 120, height: 120)
                        .padding()
                    
                    Text("Add Products")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    
                    Spacer()
                }
                
                VStack (spacing :10){
                    
                    VStack(alignment: .trailing, spacing: 10){
                        HStack{
                            Text("Name:")
                            
                            Spacer()
                            
                        }
                        .padding(.leading)
                        TextField("Enter Product Name", text: .constant(""))
                            .padding()
                            .background(Color.white)
                            .cornerRadius(20)
                        
                    }
                    
                    VStack(alignment: .trailing, spacing: 10){
                        HStack{
                            Text("Size:")
                            Spacer()
                            
                        }
                        .padding(.leading)
                        TextField("Enter Size of Bottle", text: .constant(""))
                            .padding()
                            .background(Color.white)
                            .cornerRadius(20)
                        
                    }
                    
                    VStack(alignment: .trailing, spacing: 10){
                        HStack{
                            Text("Price:")
                            Spacer()
                            
                        }
                        .padding(.leading)
                        TextField("Enter Product Price", text: .constant(""))
                            .padding()
                            .background(Color.white)
                            .cornerRadius(20)
                        
                    }
                    
                    VStack(alignment: .trailing, spacing: 10){
                        HStack{
                            Text("Quantity:")
                            Spacer()
                            
                        }
                        .padding(.leading)
                        TextField("Enter Product Quantity", text: .constant(""))
                            .padding()
                            .background(Color.white)
                            .cornerRadius(20)
                        
                    }
                    
                    Picker("Select City:",selection: $selectedCity){
                        ForEach(cities, id: \.self){ city in
                            
                            Text(city)
                            
                        }
                        
                    }
                    
                    
                }//Main Stack
                .padding()
                
                Button(action: {
                    
                }, label: {
                    Text("Add")
                        .font(.system(size: 18, weight: .bold,))
                        .foregroundColor(.white)
                        .frame(width: 360, height: 50)
                        .background(Color.green)
                        .cornerRadius(20)
                        .frame(maxWidth: .infinity, alignment: .center)
                })
            }//Scroll View
            
            
            
            
        }//Z stack
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
    
    
    
   struct TabBarView {
        var body: some View {
            VStack {
                TabView{
                    VendorHome()
                        .tabItem{
                            Image(systemName: "house.fill")
                            Text("Home")
                        }
                    
                    SearchView()
                        .tabItem{
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
}
#Preview {
    TabBarView()
}
