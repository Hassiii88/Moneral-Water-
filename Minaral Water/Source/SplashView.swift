//
//  SplashView.swift
//  Minaral Water
//
//  Created by Haseeb Farooq on 28/08/2025.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        
        VStack {
            Image("logo")
                .padding(.top, 20)
            
            ZStack {
                Image("splash.background")
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                VStack {
                    HStack {
                        VStack {
                            Text("Mineral Water\nSupplier")
                                .font(.system(size: 24, weight: .regular))
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                            Image("splash.water")
                            
                        }
                    Spacer()

                    }
                    .padding(21)
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Get Started")
                            .font(.system(size: 18, weight: .bold,))
                            .foregroundColor(.white)
                            .frame(width: 240, height: 60)
                            .background(Color.main)
                            .cornerRadius(30)
                        
                    })

                }
                .padding(.bottom, 50)
            }
            
           Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        
    }
}

#Preview {
    SplashView()
}
