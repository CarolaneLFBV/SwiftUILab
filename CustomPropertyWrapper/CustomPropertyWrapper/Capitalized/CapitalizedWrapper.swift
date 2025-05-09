//
//  CapitalizedWrapper.swift
//  CustomPropertyWrapper
//
//  Created by Carolane Lefebvre on 09/05/2025.
//

import Foundation

@propertyWrapper
struct Capitalized {
    private var value: String = ""

    var wrappedValue: String {
        get { value }
        set {
            value = newValue.prefix(1).uppercased() + newValue.dropFirst()
        }
    }

    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue
    }
}
