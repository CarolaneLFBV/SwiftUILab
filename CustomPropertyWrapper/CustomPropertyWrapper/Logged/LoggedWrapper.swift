//
//  LoggedWrapper.swift
//  CustomPropertyWrapper
//
//  Created by Carolane Lefebvre on 09/05/2025.
//

import Foundation

@propertyWrapper
struct Logged<Value> {
    private var value: Value
    private let label: String

    var wrappedValue: Value {
        get {
            print("🔍 [\(label)] Accessed: \(value)")
            return value
        }
        set {
            print("✏️ [\(label)] Updated from \(value) to \(newValue)")
            value = newValue
        }
    }

    init(wrappedValue: Value, label: String) {
        self.label = label
        self.value = wrappedValue
    }
}
