//
//  LoadingView.swift
//  TH_App19
//
//  Created by IGOR on 25/01/2025.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {

        ZStack {
            
            Color.white
                .ignoresSafeArea()
            
            VStack {
                
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 190)
            }
            
            VStack {
                
                Spacer()
                
                ProgressView()
                    .padding(.bottom, 70)
            }
        }
    }
}

#Preview {
    LoadingView()
}
