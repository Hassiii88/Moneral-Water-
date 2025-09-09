//
//  Signup.swift
//  Minaral Water
//
//  Created by Haseeb Farooq on 28/08/2025.
//

import SwiftUI

struct Signup: View {
    
    @State private var selectedCity = "Lahore" // default city
    let cities = ["Lahore", "Karachi", "Islamabad", "Multan", "Peshawar"]
    @State private var selectedGender: String? = "Male"
    
    @State private var email = ""
    @State private var name = ""
    @State private var phone = ""
    @State private var password = ""
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            
            
            VStack(spacing: 0) {
                
                VStack(spacing :10){
                CustomLogoView(width: 130, height: 130)
                    
                }
                
                VStack(spacing: 10) {
                    
                    Text("Well Come")
                        .font(.system(size: 60, weight: .light))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                }
                
                VStack (spacing: 10) {
                    
                    Text("Sign Up")
                        .font(.system(size: 30, weight: .light))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .padding(.top, 10)
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    CustomTextField(placeholder: "Enter Email", text: $email)
                    CustomTextField(placeholder: "Enter Name", text: $name)
                    CustomTextField(placeholder: "Enter Phone Number", text: $phone)
                    CustomTextField(placeholder: "Enter Password", text: $password, isSecure: true)
                    
                    genderView()
                    
                    .padding()
                    
                    Picker("Select City", selection: $selectedCity) {
                        ForEach(cities, id: \.self) { city in
                            Text(city)
                            
                            
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                    
                    CustomButton(title: "Sign Up",width: 200,height: 50,fontSize: 18) {
                        print("Sign UP tapped")
                    }
                    
                }
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(30)
                
                Spacer()
                
                VStack {
                    
                    CustomButton(title: "Already Account? Click Here",width: 200,height: 50,fontSize: 15, isbackGround: false) {
                        print("Sign UP tapped")
                    }
                }
                Spacer()
            }
            .padding(.horizontal, 30)
            .padding(.bottom, 10)
        }
    }
    
    
    private func genderView() -> some View {
        VStack(alignment: .leading, spacing: 20) {
            
            HStack {
                Text("Gender:")
                    .font(.headline)
                Spacer()
            }
            
            HStack {
                Spacer()
                
                // Male Option
                Button(action: {
                    selectedGender = "Male"
                }) {
                    HStack {
                        Image(selectedGender == "Male" ? "Iconfill" : "Icon")
                            .resizable()
                            .frame(width: 25, height: 25)
                        
                        
                        Text("Male")
                            .font(.body)
                    }
                }
                .buttonStyle(PlainButtonStyle())
                
                Spacer()
                
                // Female Option
                Button(action: {
                    selectedGender = "Female"
                }) {
                    HStack {
                        Image(selectedGender == "Female" ? "Iconfill" : "Icon")
                            .resizable()
                            .frame(width: 25, height: 25)
                        
                        
                        Text("Female")
                            .font(.body)
                    }
                }
                .buttonStyle(PlainButtonStyle())
                
                Spacer()
            }
        }
    }
}
#Preview {
    Signup()
}
