//
//  TodoListView.swift
//  CoreDataExample
//
//  Created by Carolane Lefebvre on 19/12/2024.
//

import SwiftUI

struct TodoListView: View {
    @State var viewModel: TodoViewModel
    @FetchRequest(
        entity: Todo.entity(),
        sortDescriptors: [NSSortDescriptor(keyPath: \Todo.title, ascending: true)]
    ) private var todos: FetchedResults<Todo>

    var body: some View {
        List {
            ForEach(todos) { todo in
                HStack {
                    Text(todo.title ?? "Untitled")
                        .strikethrough(todo.isDone, color: .red)
                        .foregroundColor(todo.isDone ? .gray : .primary)
                    Spacer()
                    Button(action: {
                        toggleIsDone(todo)
                    }) {
                        Image(systemName: todo.isDone ? "checkmark.circle.fill" : "circle")
                            .foregroundColor(todo.isDone ? .green : .gray)
                    }
                }
                .swipeActions {
                    Button(role: .destructive) {
                        deleteTodo(todo)
                    } label: {
                        Label("Delete", systemImage: "trash")
                    }
                }
            }
        }
    }
    
    private func toggleIsDone(_ todo: Todo) {
        withAnimation {
            viewModel.toggleIsDone(todo)
        }
    }
    
    private func deleteTodo(_ todo: Todo) {
        withAnimation {
            viewModel.deleteTodo(todo)
        }
    }
}

