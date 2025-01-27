//
//  QuotesView.swift
//  TH_App19
//
//  Created by IGOR on 25/01/2025.
//

import SwiftUI

struct QuotesView: View {
    
    @StateObject var viewModel = QuotesViewModel()
    
    var body: some View {

        ZStack {
            
            Color.white
                .ignoresSafeArea()
            
            VStack {
                
                Button(action: {
                    
                    withAnimation(.spring()) {
                        
                        viewModel.isSettings = true
                    }
                    
                }, label: {
                    
                    Image(systemName: "gearshape")
                        .foregroundColor(.black)
                        .font(.system(size: 17, weight: .regular))
                })
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                Text("Quotes")
                    .foregroundColor(.black)
                    .font(.system(size: 30, weight: .regular))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                if viewModel.quotes.isEmpty {
                    
                    VStack {
                        
                        HStack {
                            
                            Image("k1")
                            
                            Image("k2")

                        }
                        
                        Text("You haven't added any quotes yet.")
                            .foregroundColor(.black)
                            .font(.system(size: 16, weight: .regular))
                    }
                    .frame(maxHeight: .infinity)
                    
                } else {
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        LazyVStack {
                            
                            ForEach(viewModel.quotes, id: \.self) { index in
                                
                                Button(action: {
                                    
                                    viewModel.selectedQuote = index
                                    
                                    viewModel.selectedQuote?.qTog.toggle()
                                    
                                }, label: {
                                    
                                    VStack(alignment: .leading) {
                                        
                                        HStack {
                                            
                                            VStack {
                                                
                                                Image("k1")
                                                
                                                Spacer()
                                            }
                                            
                                            Text(index.qQuote ?? "")
                                                .foregroundColor(.black)
                                                .font(.system(size: 18, weight: .medium))
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                            
                                            VStack {
                                                
                                                Spacer()

                                                Image("k2")
                                                
                                            }
                                        }
                                        .frame(height: 80)
                                        
                                        HStack {
                                            
                                            Spacer()
                                            
                                            Text("\(Text(index.qAuthor ?? "")) ' \(Text(index.qYear ?? "")) \(Text(index.qBCE ?? ""))")
                                                .foregroundColor(.gray)
                                                .font(.system(size: 14, weight: .regular))
                                        }
                                        
                                        if viewModel.selectedQuote?.qTog == true {
                                            
                                            HStack(alignment: .top) {
                                                
                                                VStack(alignment: .leading) {
                                                    
                                                    HStack {
                                                        
                                                        Image(systemName: "pin")
                                                            .foregroundColor(.black)
                                                            .font(.system(size: 15, weight: .regular))
                                                        
                                                        Text("Note")
                                                            .foregroundColor(.black)
                                                            .font(.system(size: 15, weight: .regular))
                                                        
                                                        Spacer()
                                                    }
                                                    
                                                    Rectangle()
                                                        .fill(.gray.opacity(0.2))
                                                        .frame(maxWidth: .infinity)
                                                        .frame(height: 1)
                                                    
                                                    Text(index.qCom ?? "")
                                                        .foregroundColor(.black)
                                                        .font(.system(size: 15, weight: .regular))
                                                    
                                                    Spacer()
                                                }
                                                .padding(8)
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                                .frame(height: 120)
                                                .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.1)))
                                             
                                                VStack {
                                                    
                                                    Button(action: {
                                                        
                                                        viewModel.favoritesManager(model: index)
                                                        
                                                    }, label: {
                                                        
                                                        Image(systemName: viewModel.isHas(model: index) ? "bookmark.fill" : "bookmark")
                                                            .foregroundColor(Color.orange)
                                                            .font(.system(size: 15, weight: .regular))
                                                    })
                                                    
                                                    Spacer()
                                                    
                                                    Button(action: {
                                                        
                                                        withAnimation(.spring()) {
                                                            
                                                            viewModel.isDelete = true
                                                        }
                                                        
                                                    }, label: {
                                                        
                                                        Image(systemName: "trash")
                                                            .foregroundColor(Color.red)
                                                            .font(.system(size: 15, weight: .regular))
                                                    })
                                                }
                                                .frame(width: 40)
                                            }
                                        }
                                    }
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 30).fill(.white).shadow(radius: 5))
                                    .padding(5)
                                })
                            }
                        }
                    }
                }
            }
            .padding()
            
            VStack {
                
                Spacer()
                
                Button(action: {
                    
                    withAnimation(.spring()) {
                        
                        viewModel.isAdd = true
                    }
                    
                }, label: {
                    
                    HStack {
                        
                        Image("wk")
                        
                        Text("New")
                            .foregroundColor(.white)
                            .font(.system(size: 15, weight: .regular))
                    }
                    .padding(6)
                    .padding(.horizontal, 7)
                    .background(RoundedRectangle(cornerRadius: 15).fill(Color("prim")))
                })
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding()
            }
        }
        .onAppear {
            
            viewModel.fetchQuotes()
        }
        .sheet(isPresented: $viewModel.isAdd, content: {
            
            AddQuotes(viewModel: viewModel)
        })
        .sheet(isPresented: $viewModel.isSettings, content: {
            
            SettingsView()
        })
        .overlay(
            
            ZStack {
                
                Color.black.opacity(viewModel.isDelete ? 0.5 : 0)
                    .ignoresSafeArea()
                    .onTapGesture {
                        
                        withAnimation(.spring()) {
                            
                            viewModel.isDelete = false
                        }
                    }
                
                VStack(spacing: 15) {

                    Text("Delete this quote?")
                        .foregroundColor(.black)
                        .font(.system(size: 20, weight: .semibold))
                        .multilineTextAlignment(.center)
                        .padding(.vertical)

                    Rectangle()
                        .fill(.gray.opacity(0.2))
                        .frame(maxWidth: .infinity)
                        .frame(height: 1)
                        .padding(.vertical, 7)
                    
                    HStack {
                        
                        Button(action: {
                            
                            CoreDataStack.shared.deleteQuote(withQQuote: viewModel.selectedQuote?.qQuote ?? "", completion: {
                                
                                viewModel.fetchQuotes()
                            })
                            
                            withAnimation(.spring()) {
                                
                                viewModel.isDelete = false
                            }
                            
                        }, label: {
                            
                            Text("Delete")
                                .foregroundColor(.red)
                                .font(.system(size: 18, weight: .semibold))
                                .frame(maxWidth: .infinity)
                                .frame(height: 45)
                            
                        })
                        
                        Button(action: {
                            
                            withAnimation(.spring()) {
                                
                                viewModel.isDelete = false
                            }
                            
                        }, label: {
                            
                            Text("Cancel")
                                .foregroundColor(.black)
                                .font(.system(size: 17, weight: .regular))
                                .frame(maxWidth: .infinity)
                                .frame(height: 45)
                            
                        })
                    }
                    .padding(.top, 25)

                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(RoundedRectangle(cornerRadius: 20).fill(Color.white))
                .padding()
                .offset(y: viewModel.isDelete ? 0 : UIScreen.main.bounds.height)
            }
        )
    }
}

#Preview {
    QuotesView()
}
