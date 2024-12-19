//
//  ContentViewModel.swift
//  CoreDataExample
//
//  Created by Carolane Lefebvre on 14/12/2024.
//

import SwiftUI

@Observable
class TodoViewModel {
    private let repository: Crud
    var todos: [Todo] = []

    init(repository: Crud = Crud()) {
        self.repository = repository
    }
    
    func addTodo(title: String) {
        do {
            try repository.create(title: title)
        } catch {
            print("Error adding Todo: \(error)")
        }
    }
    
    func deleteTodo(_ todo: Todo) {
        do {
            try repository.delete(todo)
        } catch {
            print("Error deleting Todos: \(error)")
        }
    }
    
    func toggleIsDone(_ todo: Todo) {
        do {
            try repository.update(todo)
        } catch {
            print("Error toggling isDone: \(error)")
        }
    }
}
