//
//  R2.swift
//  TH_App19
//
//  Created by IGOR on 25/01/2025.
//

import SwiftUI

struct R2: View {
    var body: some View {

        ZStack {
            
            Color.white
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Image("R2")
                        .resizable()
                        .ignoresSafeArea()
                 
                    VStack {
                        
                        Spacer()
                        
                        VStack(alignment: .leading, spacing: 17) {
                            
                            Text("Mark your favorite quotes.")
                                .foregroundColor(.black)
                                .font(.system(size: 22, weight: .semibold))
                            
                            Text("You will easily find your favorite quotes with just one tap.")
                                .foregroundColor(.black)
                                .font(.system(size: 19, weight: .regular))
                                
                            Spacer()
                            
                            NavigationLink(destination: {
                                
                                R3()
                                    .navigationBarBackButtonHidden()
                                
                            }, label: {
                                
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.white)
                                    .font(.system(size: 17, weight: .medium))
                                    .padding(10)
                                    .background(Circle().fill(Color("prim")))
                            })
                            .frame(maxWidth: .infinity, alignment: .trailing)
                        }
                        .padding()
                        .padding(.vertical)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .frame(height: 250)
                        .background(Color.white)
                    }
                }
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    R2()
}
