//
//  TrimmingExampleView.swift
//  CustomPropertyWrapper
//
//  Created by Carolane Lefebvre on 09/05/2025.
//

import SwiftUI

struct TrimmingExampleView: View {
    @State private var trimmedRawInput = ""
    @State private var untrimmedRawInput = ""

    private var trimmedInput: UserInput {
        UserInput(username: trimmedRawInput)
    }

    var body: some View {
        VStack(spacing: 16) {
            TextField("Enter name (untrimmed)", text: $untrimmedRawInput)
                .textFieldStyle(.roundedBorder)
            
            TextField("Enter name (trimmed)", text: $trimmedRawInput)
                .textFieldStyle(.roundedBorder)

            VStack(alignment: .leading, spacing: 8) {
                Text("Untrimmed result: '\(untrimmedRawInput)'")
                Text("Trimmed result: '\(trimmedInput.username)'")
            }
            .font(.subheadline)
            .foregroundColor(.gray)
        }
        .padding()
    }
}

#Preview {
    TrimmingExampleView()
}
