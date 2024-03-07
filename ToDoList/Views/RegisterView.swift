//
//  RegisterView.swift
//  ToDoList
//
//  Created by Дарья Яцынюк on 21.02.2024.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    
    var body: some View {
        NavigationView {
            VStack {
                HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -15, background: .yellow)
                
                VStack {
                    TextField("Full Name", text: $viewModel.name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocorrectionDisabled()
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TLButton(title: "Create Account", background: .green) {
                        viewModel.register()
                    }
                    .frame(height: 40)
                    .padding()
                }
                .padding()
                .background(Color.white)
                .cornerRadius(16)
                .shadow(radius: 2)
                .padding(.bottom, 150)
                .ignoresSafeArea(.keyboard)
                Spacer()
                .keyboardAdaptive()
                
            }
        }
    }
}

#Preview {
    RegisterView()
}
