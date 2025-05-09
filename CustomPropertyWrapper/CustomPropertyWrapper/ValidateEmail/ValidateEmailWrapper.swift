//
//  ValidateEmailWrapper.swift
//  CustomPropertyWrapper
//
//  Created by Carolane Lefebvre on 09/05/2025.
//

import Foundation

@propertyWrapper
struct ValidatedEmail {
    private var value: String = ""

    var wrappedValue: String {
        get { value }
        set { value = newValue }
    }

    var projectedValue: Bool {
        value.contains("@") && value.contains(".")
    }

    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue
    }
}
