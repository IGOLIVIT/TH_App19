//
//  SettingsView.swift
//  TH_App19
//
//  Created by IGOR on 25/01/2025.
//

import SwiftUI
import StoreKit

struct SettingsView: View {
    
    @StateObject var viewModel = QuotesViewModel()
    @Environment(\.presentationMode) var route
    
    var body: some View {

        ZStack {
            
            Color.white
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Settings")
                        .foregroundColor(.black)
                        .font(.system(size: 20, weight: .regular))
                    
                    Button(action: {
                        
                        withAnimation(.spring()) {
                            
                            route.wrappedValue.dismiss()
                        }
                        
                    }, label: {
                        
                        Image(systemName: "xmark")
                            .foregroundColor(.black)
                            .font(.system(size: 20, weight: .medium))
                    })
                    .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .padding(.top, 10)
                
                Rectangle()
                    .fill(.gray.opacity(0.2))
                    .frame(maxWidth: .infinity)
                    .frame(height: 1)
                    .padding(.bottom, 30)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack(spacing: 20) {
                        
                        Button(action: {
                            
                            SKStoreReviewController.requestReview()
                            
                        }, label: {
                            
                            HStack {
                                
                                Image(systemName: "star")
                                    .foregroundColor(Color("prim"))
                                    .font(.system(size: 18, weight: .regular))
                                
                                Text("Rate the app")
                                    .foregroundColor(.black)
                                    .font(.system(size: 16, weight: .regular))
                                
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.black.opacity(0.3))
                            }
                        })
                        
                        Rectangle()
                            .fill(.gray.opacity(0.2))
                            .frame(maxWidth: .infinity)
                            .frame(height: 1)
                        
                        Button(action: {
                            
                            guard let url = URL(string: "https://www.termsfeed.com/live/568706c1-95c8-4402-b7fb-5ef15fdb1465") else { return }
                            
                            UIApplication.shared.open(url)
                            
                        }, label: {
                            
                            HStack {
                                
                                Image(systemName: "menucard")
                                    .foregroundColor(Color("prim"))
                                    .font(.system(size: 18, weight: .regular))
                                
                                Text("Rate the app")
                                    .foregroundColor(.black)
                                    .font(.system(size: 16, weight: .regular))
                                
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.black.opacity(0.3))
                            }
                        })
                        
                        Rectangle()
                            .fill(.gray.opacity(0.2))
                            .frame(maxWidth: .infinity)
                            .frame(height: 1)
                    }
                }
                
            }
            .padding()
        }
    }
}

#Preview {
    SettingsView()
}
