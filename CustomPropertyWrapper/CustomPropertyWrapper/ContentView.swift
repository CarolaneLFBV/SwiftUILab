//
//  ContentView.swift
//  CustomPropertyWrapper
//
//  Created by Carolane Lefebvre on 09/05/2025.
//

import SwiftUI

enum WrapperExample: String, CaseIterable, Identifiable {
    case clamped, trimmed, capitalized, logged, email

    var id: String { self.rawValue }
}

struct ContentView: View {
    @State private var selectedExample: WrapperExample = .clamped

    var body: some View {
        VStack {
            Picker("Choose Wrapper", selection: $selectedExample) {
                ForEach(WrapperExample.allCases) { example in
                    Text(example.rawValue.capitalized).tag(example)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()

            Spacer()

            switch selectedExample {
            case .clamped:
                ClampedExampleView()
            case .trimmed:
                TrimmingExampleView()
            case .capitalized:
                CapitalizedExampleView()
            case .logged:
                LoggedExampleView()
            case .email:
                ValidatedEmailExampleView()
            }

            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
