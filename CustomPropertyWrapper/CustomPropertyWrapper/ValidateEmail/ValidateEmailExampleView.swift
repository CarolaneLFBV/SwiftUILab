//
//  ValidateEmailExampleView.swift
//  CustomPropertyWrapper
//
//  Created by Carolane Lefebvre on 09/05/2025.
//

import SwiftUI

struct ValidatedEmailExampleView: View {
    @State private var input = ""
    @State private var isValid = false

    var body: some View {
        VStack(spacing: 20) {
            TextField("Enter email", text: $input)
                .autocapitalization(.none)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)

            Button("Validate") {
                let model = ValidatedEmailModel(email: input)
                isValid = model.$email
            }

            Text(isValid ? "✅ Valid email" : "❌ Invalid email")
                .foregroundColor(isValid ? .green : .red)
        }
        .padding()
    }
}

#Preview {
    ValidatedEmailExampleView()
}
