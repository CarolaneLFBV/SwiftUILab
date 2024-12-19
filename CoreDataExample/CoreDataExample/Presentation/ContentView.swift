//
//  ContentView.swift
//  CoreDataExample
//
//  Created by Carolane Lefebvre on 14/12/2024.
//


import SwiftUI

struct ContentView: View {
    @State private var viewModel = TodoViewModel()

    var body: some View {
        NavigationView {
            VStack {
                TodoListView(viewModel: viewModel)
                AddTodoView(viewModel: viewModel)
            }
        }
    }
}



#Preview {
    ContentView()
}
