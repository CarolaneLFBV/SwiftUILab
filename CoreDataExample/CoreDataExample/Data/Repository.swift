import CoreData
import SwiftUI

struct Crud {
    private let viewContext = PersistenceController.shared.viewContext
    
    enum Failed: Error {
        case create(reason: String), delete(reason: String), update(reason: String), fetch(reason: String)
    }
    
    func fetch(
        predicate: NSPredicate? = nil,
        sortDescriptors: [NSSortDescriptor] = []
    ) throws -> [Todo] {
        let request: NSFetchRequest<Todo> = Todo.fetchRequest()
        request.predicate = predicate
        request.sortDescriptors = sortDescriptors
        
        do {
            return try viewContext.fetch(request)
        } catch {
            throw Failed.fetch(reason: error.localizedDescription)
        }
    }
    
    func create(title: String) throws {
        let newTodo = Todo(context: viewContext)
        newTodo.id = UUID()
        newTodo.title = title
        newTodo.isDone = false
        
        do {
            try viewContext.save()
        } catch {
            throw Failed.create(reason: error.localizedDescription)
        }
    }
    
    func delete(_ todo: Todo) throws {
        viewContext.delete(todo)
        do {
            try viewContext.save()
        } catch {
            throw Failed.delete(reason: error.localizedDescription)
        }
    }
    
    func update(_ todo: Todo) throws {
        todo.isDone.toggle()
        do {
            try viewContext.save()
        } catch {
            throw Failed.update(reason: error.localizedDescription)
        }
    }
}

