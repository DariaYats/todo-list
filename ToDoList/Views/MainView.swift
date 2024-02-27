//
//  ContentView.swift
//  ToDoList
//
//  Created by Дарья Яцынюк on 21.02.2024.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            TabView {
                ToDoListView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                
                ProfileView()
                    .tabItem {
                        Label("Person", systemImage: "person.circle")
                    }
            }
        } else {
            LoginView()
        }
    }
}

#Preview {
    MainView()
}
