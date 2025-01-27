//
//  AddQuotes.swift
//  TH_App19
//
//  Created by IGOR on 27/01/2025.
//

import SwiftUI

struct AddQuotes: View {
    
    @StateObject var viewModel: QuotesViewModel
    
    var body: some View {

        ZStack {
            
            Color.white
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("New quote")
                        .foregroundColor(.black)
                        .font(.system(size: 18, weight: .medium))
                    
                    HStack {
                        
                        Button(action: {
                            
                            withAnimation(.spring()) {
                                
                                viewModel.isAdd = true
                            }
                            
                        }, label: {
                            
                            Image(systemName: "chevron.left")
                                .foregroundColor(.black)
                                .font(.system(size: 17, weight: .regular))
                        })
                        
                        Spacer()
                        
                        Button(action: {
                            
                            viewModel.addQuote()
                            
                            viewModel.qQuote = ""
                            viewModel.qYear = ""
                            viewModel.qAuthor = ""
                            viewModel.qCom = ""

                            viewModel.fetchQuotes()
                            
                            withAnimation(.spring()) {
                                
                                viewModel.isAdd = false
                            }
                            
                        }, label: {
                            
                            Text("Save")
                                .foregroundColor(Color("prim"))
                                .font(.system(size: 16, weight: .regular))
                        })
                        .opacity(viewModel.qQuote.isEmpty ? 0.6 : 1)
                        .disabled(viewModel.qQuote.isEmpty ? true : false)
                    }
                }
                
                Rectangle()
                    .fill(.gray.opacity(0.2))
                    .frame(maxWidth: .infinity)
                    .frame(height: 1)
                    .padding(.bottom)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack(alignment: .leading) {
                        
                        Text("Quote")
                            .foregroundColor(.black)
                            .font(.system(size: 14, weight: .regular))
                        
                        ZStack(alignment: .leading, content: {
                            
                            Text("Enter")
                                .foregroundColor(.gray)
                                .font(.system(size: 14, weight: .regular))
                                .opacity(viewModel.qQuote.isEmpty ? 1 : 0)
                            
                            TextField("", text: $viewModel.qQuote)
                                .foregroundColor(.black)
                                .font(.system(size: 14, weight: .regular))
                            
                        })
                        .padding(6)
                        .frame(maxWidth: .infinity)
                        
                        Rectangle()
                            .fill(.gray.opacity(0.2))
                            .frame(maxWidth: .infinity)
                            .frame(height: 1)
                            .padding(.bottom)
                        
                        Text("Author")
                            .foregroundColor(.black)
                            .font(.system(size: 14, weight: .regular))
                        
                        ZStack(alignment: .leading, content: {
                            
                            Text("Enter")
                                .foregroundColor(.gray)
                                .font(.system(size: 14, weight: .regular))
                                .opacity(viewModel.qAuthor.isEmpty ? 1 : 0)
                            
                            TextField("", text: $viewModel.qAuthor)
                                .foregroundColor(.black)
                                .font(.system(size: 14, weight: .regular))
                            
                        })
                        .padding(6)
                        .frame(maxWidth: .infinity)
                        
                        Rectangle()
                            .fill(.gray.opacity(0.2))
                            .frame(maxWidth: .infinity)
                            .frame(height: 1)
                            .padding(.bottom)
                        
                        Text("Comment")
                            .foregroundColor(.black)
                            .font(.system(size: 14, weight: .regular))
                        
                        ZStack(alignment: .leading, content: {
                            
                            Text("Enter")
                                .foregroundColor(.gray)
                                .font(.system(size: 14, weight: .regular))
                                .opacity(viewModel.qCom.isEmpty ? 1 : 0)
                            
                            TextField("", text: $viewModel.qCom)
                                .foregroundColor(.black)
                                .font(.system(size: 14, weight: .regular))
                            
                        })
                        .padding(6)
                        .frame(maxWidth: .infinity)
                        
                        Rectangle()
                            .fill(.gray.opacity(0.2))
                            .frame(maxWidth: .infinity)
                            .frame(height: 1)
                            .padding(.bottom)
                        
                        HStack {
                            
                            VStack(alignment: .leading) {
                                
                                Text("Year")
                                    .foregroundColor(.black)
                                    .font(.system(size: 14, weight: .regular))
                                
                                ZStack(alignment: .leading, content: {
                                    
                                    Text("Enter")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 14, weight: .regular))
                                        .opacity(viewModel.qYear.isEmpty ? 1 : 0)
                                    
                                    TextField("", text: $viewModel.qYear)
                                        .foregroundColor(.black)
                                        .font(.system(size: 14, weight: .regular))
                                    
                                })
                                .padding(6)
                                .frame(maxWidth: .infinity)
                            }
                            
                            VStack(alignment: .trailing) {
                                
                                Text("BCE")
                                    .foregroundColor(.black)
                                    .font(.system(size: 14, weight: .regular))
                                
                                Toggle(isOn: $viewModel.isBCE, label: {
                                    
                                })
                                .padding(1)
                            }
                        }
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    AddQuotes(viewModel: QuotesViewModel())
}
