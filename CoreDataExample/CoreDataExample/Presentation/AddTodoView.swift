//
//  AddTodoView.swift
//  CoreDataExample
//
//  Created by Carolane Lefebvre on 19/12/2024.
//

import SwiftUI

struct AddTodoView: View {
    @State var viewModel: TodoViewModel
    @State private var newTodoTitle: String = ""

    var body: some View {
        HStack {
            TextField("New Todo", text: $newTodoTitle)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: addTodo) {
                Label("Add", systemImage: "plus")
            }
        }
        .padding()
    }
    
    private func addTodo() {
        guard !newTodoTitle.isEmpty else { return }
        withAnimation {
            viewModel.addTodo(title: newTodoTitle)
            newTodoTitle = ""
        }
    }
}
