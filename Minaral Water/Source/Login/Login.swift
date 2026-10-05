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
    @State var goToAdminHome: Bool = false
    @State var goToForgetPassword: Bool = false
    @State var goToSignUp: Bool = false
    
    @State private var showAlert = false
    @State private var alertTitle = ""
    @State private var alertMessage = ""
    
    
    var body: some View {
        
        VStack (spacing : 20){
            
                Image("logo")
                    .padding(.top, 20)
                
                Text("Well Come")
                    .font(.system(size: 60, weight: .light))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                
                
            
            
            VStack(spacing: 20) {
                
                Text("Login")
                    .font(.system(size: 30, weight: .light))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding(.top, 30)
                
                TextField("Email", text: $email)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(15)
                
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(15)
                
                
                Button(action: {
                    
                    guard !email.isEmpty, !password.isEmpty else {
                        alertTitle = "Error"
                        alertMessage = "Please enter email & password"
                        showAlert = true
                        return
                    }
                    
                    let isValidUser = DatabaseManager.shared.checkLogin(email: email, password: password)
                    
                    if isValidUser {
                        goToAdminHome = true
                    } else {
                        alertTitle = "Invalid"
                        alertMessage = "Email or Password incorrect"
                        showAlert = true
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
            
            
            HStack(spacing :20){
                
                Button(action: {
                    
                    goToForgetPassword = true
                    
                }, label: {
                    Text("Forget\nPassword?")
                        .font(.system(size: 18, weight: .light))
                        .foregroundColor(.main)
                        .frame(width: 162, height: 43)
                        .cornerRadius(30)
                    
                })
                
                Button(action: {
                    
                    goToSignUp = true
                    
                }, label: {
                    Text("Sign Up")
                        .font(.system(size: 18, weight: .light))
                        .foregroundColor(.main)
                        .frame(width: 162, height: 43)
                        .cornerRadius(30)
                    
                })
            }
            Spacer()
            
        }
        .padding(.horizontal, 16)
        
        .navigationDestination(isPresented: $goToSignUp, destination: {
            Signup()
        })
        
        .navigationDestination(isPresented: $goToForgetPassword, destination: {
            ForgetPassword()
        })
        
        .fullScreenCover(isPresented: $goToAdminHome, content: {
            Adminhome()
        })
        
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text(alertTitle),
                message: Text(alertMessage),
                dismissButton: .default(Text("OK")) {
                    if alertTitle == "Success" {
                        goToAdminHome = true
                    }
                }
            )
        }
        
    }
}
#Preview {
    Login()
}
