//
//  TrimmingWrapper.swift
//  CustomPropertyWrapper
//
//  Created by Carolane Lefebvre on 09/05/2025.
//

import Foundation

@propertyWrapper
struct Trimmed {
    private var value: String = ""

    var wrappedValue: String {
        get { value }
        set { value = newValue.trimmingCharacters(in: .whitespacesAndNewlines) }
    }

    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue
    }
}
