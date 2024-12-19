//
//  CoreDataExampleApp.swift
//  CoreDataExample
//
//  Created by Carolane Lefebvre on 14/12/2024.
//

import SwiftUI

@main
struct CoreDataExampleApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.viewContext)
        }
    }
}
