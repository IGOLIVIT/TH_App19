//
//  Review.swift
//  TH_App19
//
//  Created by IGOR on 12/02/2025.
//

import SwiftUI
import StoreKit

struct Review: View {

    @AppStorage("status") var status: Bool = false
    
    var body: some View {

        ZStack {
            
            Color.white
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Image("Review")
                        .resizable()
                        .ignoresSafeArea()
                 
                    VStack {
                        
                        Spacer()
                        
                        VStack(alignment: .leading, spacing: 17) {
                            
                            Text("Rate Our App!")
                                .foregroundColor(.black)
                                .font(.system(size: 22, weight: .semibold))
                            
                            Text("Rate our app in the AppStore. Help us to become better. We work for you.")
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
        .onAppear {
            
            SKStoreReviewController.requestReview()
        }
    }
}

#Preview {
    Review()
}
