//
//  Login.swift
//  Minaral Water
//
//  Created by Haseeb Farooq on 28/08/2025.
//

import SwiftUI

struct Login: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack (spacing : 20){
            VStack(spacing :20){
                    
                Image("logo")
                    .padding(.top, 250)
                
               Spacer()
            }
            
            
            VStack(spacing: 20) {
                
                        Text("Well Come")
                            .font(.system(size: 60, weight: .light))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                
                Spacer()
            }
        
            
            VStack(spacing: 20) {
                
                Text("Login")
                    .font(.system(size: 30, weight: .light))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding(.top, 30)
                
                TextField("Email", text: $email)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(30)
                
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(30)
                
                Button(action: {
                    guard !email.isEmpty, !password.isEmpty else {
                        print(email)
                        print(password)
                        return
                    }
                    
                }, label: {
                    Text("Login")
                        .font(.system(size: 18, weight: .bold,))
                        .foregroundColor(.white)
                        .frame(width: 200, height: 50)
                        .background(Color.main)
                        .cornerRadius(30)
                    
                })
                
            }
            
         

            VStack {
                Spacer()
                HStack(spacing :20){
                    Button(action: {
                        
                    }, label: {
                        Text("Forget\nPassword?")
                            .font(.system(size: 18, weight: .light))
                            .foregroundColor(.main)
                            .frame(width: 162, height: 43)
                            .cornerRadius(30)
                        
                    })
                    Button(action: {
                        
                    }, label: {
                        Text("Sign Up")
                            .font(.system(size: 18, weight: .light))
                            .foregroundColor(.main)
                            .frame(width: 162, height: 43)
                            .cornerRadius(30)
                        
                    })
                }
                .padding(.horizontal, 30)
                .padding(.bottom, 300)
                Spacer()
            }
            
                }
               
                
            
    }}
#Preview {
    Login()
}
