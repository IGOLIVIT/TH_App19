//
//  R3.swift
//  TH_App19
//
//  Created by IGOR on 25/01/2025.
//

import SwiftUI

struct R3: View {
    
    @AppStorage("status") var status: Bool = false
    
    var body: some View {

        ZStack {
            
            Color.white
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Image("R3")
                        .resizable()
                        .ignoresSafeArea()
                 
                    VStack {
                        
                        Spacer()
                        
                        VStack(alignment: .leading, spacing: 17) {
                            
                            Text("Read interesting articles.")
                                .foregroundColor(.black)
                                .font(.system(size: 22, weight: .semibold))
                            
                            Text("A variety of articles about different philosophical eras are waiting for you.")
                                .foregroundColor(.black)
                                .font(.system(size: 19, weight: .regular))
                                
                            Spacer()
                            
                            Button(action: {
                                
                                status = true
                                
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
    R3()
}
