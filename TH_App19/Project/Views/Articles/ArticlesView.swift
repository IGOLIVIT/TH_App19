//
//  ArticlesView.swift
//  TH_App19
//
//  Created by IGOR on 25/01/2025.
//

import SwiftUI

struct ArticlesView: View {
    
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
                
                Text("Articles")
                    .foregroundColor(.black)
                    .font(.system(size: 30, weight: .regular))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 20)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack(spacing: 15) {
                        
                        VStack {
                            
                            HStack(alignment: .top) {
                                
                                Image(systemName: "newspaper")
                                    .foregroundColor(Color("prim"))
                                    .font(.system(size: 17, weight: .regular))
                                
                                Text("Ancient Philosophy: The Roots of Western Thought")
                                    .foregroundColor(.black)
                                    .font(.system(size: 18, weight: .regular))
                            }
                            .onTapGesture {

                                withAnimation(.spring()) {
                                    
                                    viewModel.isDetailVisible1.toggle()
                                }
                            }
                            
                            if viewModel.isDetailVisible1 {
                                
                                VStack(alignment: .leading, spacing: 8) {
                                    
                                    HStack {
                                        
                                        Image(systemName: "doc.text")
                                            .foregroundColor(.black)
                                            .font(.system(size: 15, weight: .regular))
                                        
                                        Text("Article")
                                            .foregroundColor(.black)
                                            .font(.system(size: 15, weight: .regular))
                                    }
                                    .padding(.bottom, 7)
                                    
                                    Text("Ancient philosophy, originating in Greece and later expanding into Rome, laid the foundation for much of Western intellectual tradition. Philosophers like Socrates, Plato, and Aristotle explored key concepts such as ethics, metaphysics, and epistemology. Their inquiries into the nature of reality, the good life, and knowledge shaped much of the intellectual discourse that followed. This article will explore the key figures and ideas of ancient philosophy, touching on major schools of thought like the Sophists, Cynics, Stoics, and Epicureans.")
                                        .foregroundColor(.black)
                                        .font(.system(size: 14, weight: .regular))
                                }
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                
                            }
                            
                        }
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(RoundedRectangle(cornerRadius: 15).fill(.gray.opacity(0.1)))
                        
                        VStack {
                            
                            HStack(alignment: .top) {
                                
                                Image(systemName: "newspaper")
                                    .foregroundColor(Color("prim"))
                                    .font(.system(size: 17, weight: .regular))
                                
                                Text("Hellenistic Philosophy: The Rise of Schools and Individualism")
                                    .foregroundColor(.black)
                                    .font(.system(size: 18, weight: .regular))
                            }
                            .onTapGesture {

                                withAnimation(.spring()) {
                                    
                                    viewModel.isDetailVisible2.toggle()
                                }
                            }
                            
                            if viewModel.isDetailVisible2 {
                                
                                VStack(alignment: .leading, spacing: 8) {
                                    
                                    HStack {
                                        
                                        Image(systemName: "doc.text")
                                            .foregroundColor(.black)
                                            .font(.system(size: 15, weight: .regular))
                                        
                                        Text("Article")
                                            .foregroundColor(.black)
                                            .font(.system(size: 15, weight: .regular))
                                    }
                                    .padding(.bottom, 7)
                                    
                                    Text("The Hellenistic period, following the death of Alexander the Great, saw a shift in philosophical thought toward more individualistic concerns, including ethics and personal happiness. Philosophical schools such as Stoicism, Epicureanism, and Skepticism flourished, each offering different answers to life's fundamental questions. This article will delve into these schools' teachings and their enduring influence on later Western philosophy.")
                                        .foregroundColor(.black)
                                        .font(.system(size: 14, weight: .regular))
                                }
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                
                            }
                            
                        }
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(RoundedRectangle(cornerRadius: 15).fill(.gray.opacity(0.1)))
                        
                        VStack {
                            
                            HStack(alignment: .top) {
                                
                                Image(systemName: "newspaper")
                                    .foregroundColor(Color("prim"))
                                    .font(.system(size: 17, weight: .regular))
                                
                                Text("Medieval Philosophy: Faith, Reason, and the Rise of Scholasticism")
                                    .foregroundColor(.black)
                                    .font(.system(size: 18, weight: .regular))
                            }
                            .onTapGesture {

                                withAnimation(.spring()) {
                                    
                                    viewModel.isDetailVisible3.toggle()
                                }
                            }
                            
                            if viewModel.isDetailVisible3 {
                                
                                VStack(alignment: .leading, spacing: 8) {
                                    
                                    HStack {
                                        
                                        Image(systemName: "doc.text")
                                            .foregroundColor(.black)
                                            .font(.system(size: 15, weight: .regular))
                                        
                                        Text("Article")
                                            .foregroundColor(.black)
                                            .font(.system(size: 15, weight: .regular))
                                    }
                                    .padding(.bottom, 7)
                                    
                                    Text("Medieval philosophy emerged in the context of the Christian Church’s dominance in the West. Thinkers such as Augustine of Hippo and Thomas Aquinas worked to reconcile reason and faith, bringing classical philosophy into dialogue with Christian theology. This article will examine the central concerns of medieval philosophy, including the nature of God, the problem of evil, and the relationship between faith and reason, and how these issues influenced later intellectual developments.")
                                        .foregroundColor(.black)
                                        .font(.system(size: 14, weight: .regular))
                                }
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                
                            }
                            
                        }
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(RoundedRectangle(cornerRadius: 15).fill(.gray.opacity(0.1)))
                        
                        VStack {
                            
                            HStack(alignment: .top) {
                                
                                Image(systemName: "newspaper")
                                    .foregroundColor(Color("prim"))
                                    .font(.system(size: 17, weight: .regular))
                                
                                Text("Renaissance Philosophy: Rebirth of Humanism and Scientific Inquiry")
                                    .foregroundColor(.black)
                                    .font(.system(size: 18, weight: .regular))
                            }
                            .onTapGesture {

                                withAnimation(.spring()) {
                                    
                                    viewModel.isDetailVisible4.toggle()
                                }
                            }
                            
                            if viewModel.isDetailVisible4 {
                                
                                VStack(alignment: .leading, spacing: 8) {
                                    
                                    HStack {
                                        
                                        Image(systemName: "doc.text")
                                            .foregroundColor(.black)
                                            .font(.system(size: 15, weight: .regular))
                                        
                                        Text("Article")
                                            .foregroundColor(.black)
                                            .font(.system(size: 15, weight: .regular))
                                    }
                                    .padding(.bottom, 7)
                                    
                                    Text("The Renaissance marked a revival of interest in the classical texts of ancient Greece and Rome, coupled with the development of new ideas in science, politics, and ethics. Humanism, with its emphasis on human potential and achievement, became a central theme in Renaissance philosophy. Philosophers like Niccolò Machiavelli and Francis Bacon questioned traditional views and laid the groundwork for modern political theory and the scientific method. This article will explore how Renaissance thinkers sought to balance the achievements of the ancient world with the needs of a rapidly changing society.")
                                        .foregroundColor(.black)
                                        .font(.system(size: 14, weight: .regular))
                                }
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                
                            }
                            
                        }
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(RoundedRectangle(cornerRadius: 15).fill(.gray.opacity(0.1)))
                        
                        VStack {
                            
                            HStack(alignment: .top) {
                                
                                Image(systemName: "newspaper")
                                    .foregroundColor(Color("prim"))
                                    .font(.system(size: 17, weight: .regular))
                                
                                Text("Enlightenment Philosophy: The Age of Reason and Revolution")
                                    .foregroundColor(.black)
                                    .font(.system(size: 18, weight: .regular))
                            }
                            .onTapGesture {

                                withAnimation(.spring()) {
                                    
                                    viewModel.isDetailVisible5.toggle()
                                }
                            }
                            
                            if viewModel.isDetailVisible5 {
                                
                                VStack(alignment: .leading, spacing: 8) {
                                    
                                    HStack {
                                        
                                        Image(systemName: "doc.text")
                                            .foregroundColor(.black)
                                            .font(.system(size: 15, weight: .regular))
                                        
                                        Text("Article")
                                            .foregroundColor(.black)
                                            .font(.system(size: 15, weight: .regular))
                                    }
                                    .padding(.bottom, 7)
                                    
                                    Text("The Enlightenment was a period of intellectual and cultural transformation in Europe, emphasizing reason, progress, and individual rights. Philosophers like John Locke, Voltaire, and Immanuel Kant challenged established authorities, including the monarchy and the Church. This article will discuss how Enlightenment thinkers advanced ideas about government, human rights, and knowledge, and how these ideas played a crucial role in the American and French Revolutions.")
                                        .foregroundColor(.black)
                                        .font(.system(size: 14, weight: .regular))
                                }
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                
                            }
                            
                        }
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(RoundedRectangle(cornerRadius: 15).fill(.gray.opacity(0.1)))
                        
                        VStack {
                            
                            HStack(alignment: .top) {
                                
                                Image(systemName: "newspaper")
                                    .foregroundColor(Color("prim"))
                                    .font(.system(size: 17, weight: .regular))
                                
                                Text("Modern Philosophy: The Search for Certainty in an Uncertain World")
                                    .foregroundColor(.black)
                                    .font(.system(size: 18, weight: .regular))
                            }
                            .onTapGesture {

                                withAnimation(.spring()) {
                                    
                                    viewModel.isDetailVisible6.toggle()
                                }
                            }
                            
                            if viewModel.isDetailVisible6 {
                                
                                VStack(alignment: .leading, spacing: 8) {
                                    
                                    HStack {
                                        
                                        Image(systemName: "doc.text")
                                            .foregroundColor(.black)
                                            .font(.system(size: 15, weight: .regular))
                                        
                                        Text("Article")
                                            .foregroundColor(.black)
                                            .font(.system(size: 15, weight: .regular))
                                    }
                                    .padding(.bottom, 7)
                                    
                                    Text("Modern philosophy, beginning in the 17th century, sought to address the challenges posed by the rise of scientific knowledge and the decline of religious authority. Thinkers like René Descartes, John Locke, and David Hume explored the nature of human knowledge, the self, and the external world. This article will examine the key themes of modern philosophy, including the mind-body problem, empiricism, and the critique of metaphysics.")
                                        .foregroundColor(.black)
                                        .font(.system(size: 14, weight: .regular))
                                }
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                
                            }
                            
                        }
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(RoundedRectangle(cornerRadius: 15).fill(.gray.opacity(0.1)))
                        
                        VStack {
                            
                            HStack(alignment: .top) {
                                
                                Image(systemName: "newspaper")
                                    .foregroundColor(Color("prim"))
                                    .font(.system(size: 17, weight: .regular))
                                
                                Text("19th Century Philosophy: From Idealism to Existentialism")
                                    .foregroundColor(.black)
                                    .font(.system(size: 18, weight: .regular))
                            }
                            .onTapGesture {

                                withAnimation(.spring()) {
                                    
                                    viewModel.isDetailVisible7.toggle()
                                }
                            }
                            
                            if viewModel.isDetailVisible7 {
                                
                                VStack(alignment: .leading, spacing: 8) {
                                    
                                    HStack {
                                        
                                        Image(systemName: "doc.text")
                                            .foregroundColor(.black)
                                            .font(.system(size: 15, weight: .regular))
                                        
                                        Text("Article")
                                            .foregroundColor(.black)
                                            .font(.system(size: 15, weight: .regular))
                                    }
                                    .padding(.bottom, 7)
                                    
                                    Text("The 19th century was a time of profound intellectual change, as philosophers grappled with the consequences of the Enlightenment, the Industrial Revolution, and the rise of nationalism. German Idealism, represented by figures like Hegel, sought to understand the evolution of human consciousness and the development of history. Meanwhile, existentialist thinkers like Kierkegaard and Nietzsche focused on individual freedom, the absurdity of existence, and the nature of morality. This article will explore these movements and how they influenced modern thought.")
                                        .foregroundColor(.black)
                                        .font(.system(size: 14, weight: .regular))
                                }
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                
                            }
                            
                        }
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(RoundedRectangle(cornerRadius: 15).fill(.gray.opacity(0.1)))
                        
                        VStack {
                            
                            HStack(alignment: .top) {
                                
                                Image(systemName: "newspaper")
                                    .foregroundColor(Color("prim"))
                                    .font(.system(size: 17, weight: .regular))
                                
                                Text("Contemporary Philosophy: From Analytical Philosophy to Postmodernism")
                                    .foregroundColor(.black)
                                    .font(.system(size: 18, weight: .regular))
                            }
                            .onTapGesture {

                                withAnimation(.spring()) {
                                    
                                    viewModel.isDetailVisible8.toggle()
                                }
                            }
                            
                            if viewModel.isDetailVisible8 {
                                
                                VStack(alignment: .leading, spacing: 8) {
                                    
                                    HStack {
                                        
                                        Image(systemName: "doc.text")
                                            .foregroundColor(.black)
                                            .font(.system(size: 15, weight: .regular))
                                        
                                        Text("Article")
                                            .foregroundColor(.black)
                                            .font(.system(size: 15, weight: .regular))
                                    }
                                    .padding(.bottom, 7)
                                    
                                    Text("Contemporary philosophy, shaped by the events of the 20th century, is characterized by a diversity of approaches and schools of thought. Analytical philosophy, led by figures like Bertrand Russell and Ludwig Wittgenstein, focused on language and logic, while postmodernists like Michel Foucault and Jacques Derrida questioned the very notion of objective truth. This article will examine the main currents of contemporary philosophy and their contributions to the ongoing debates on language, power, ethics, and the self.")
                                        .foregroundColor(.black)
                                        .font(.system(size: 14, weight: .regular))
                                }
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(RoundedRectangle(cornerRadius: 10).fill(.gray.opacity(0.3)))
                                
                            }
                            
                        }
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(RoundedRectangle(cornerRadius: 15).fill(.gray.opacity(0.1)))
                    }
                }
            }
            .padding()
        }
        .sheet(isPresented: $viewModel.isSettings, content: {
            
            SettingsView(viewModel: viewModel)
        })
    }
}

#Preview {
    ArticlesView()
}
