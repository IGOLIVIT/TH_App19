//
//  U1.swift
//  TH_App19
//
//  Created by IGOR on 12/02/2025.
//

import SwiftUI

struct U1: View {
    var body: some View {

        ZStack {
            
            Color.white
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Image("U1")
                        .resizable()
                        .ignoresSafeArea()
                 
                    VStack {
                        
                        Spacer()
                        
                        VStack(alignment: .leading, spacing: 17) {
                            
                            Text("Seja grandioso na sua sorte!")
                                .foregroundColor(.black)
                                .font(.system(size: 22, weight: .semibold))
                            
                            Text("Fortune tiger is your path to success. Play and win!")
                                .foregroundColor(.black)
                                .font(.system(size: 19, weight: .regular))
                                
                            Spacer()
                            
                            NavigationLink(destination: {
                                
                                Review()
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
    U1()
}
