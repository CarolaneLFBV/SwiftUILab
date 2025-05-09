//
//  ClampedWrapper.swift
//  CustomPropertyWrapper
//
//  Created by Carolane Lefebvre on 09/05/2025.
//

import Foundation

@propertyWrapper
struct Clamped {
    private var value: Int = 0
    private let range: ClosedRange<Int>

    var wrappedValue: Int {
        get { value }
        set { value = min(max(newValue, range.lowerBound), range.upperBound) }
    }

    init(wrappedValue: Int, _ range: ClosedRange<Int>) {
        self.range = range
        self.value = min(max(wrappedValue, range.lowerBound), range.upperBound)
    }
}
