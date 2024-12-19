//
//  SwiftLinterCIApp.swift
//  SwiftLinterCI
//
//  Created by Carolane Lefebvre on 16/10/2024.
//

import SwiftUI
import SwiftData

@main
struct SwiftLinterCIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Book.self)
    }
}
